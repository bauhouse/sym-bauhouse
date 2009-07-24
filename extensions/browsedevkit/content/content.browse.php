<?php
	
	if (!defined('BITTER_LANGUAGE_PATH')) {
		define('BITTER_LANGUAGE_PATH', EXTENSIONS . '/browsedevkit/lib/bitter/languages');
	}
	
	if (!defined('BITTER_FORMAT_PATH')) {
		define('BITTER_FORMAT_PATH', EXTENSIONS . '/browsedevkit/lib/bitter/formats');
	}
	
	if (!defined('BITTER_CACHE_PATH')) {
		define('BITTER_CACHE_PATH', EXTENSIONS . '/browsedevkit/lib/bitter/caches');
	}
	
	require_once(TOOLKIT . '/class.devkit.php');
	require_once(EXTENSIONS . '/browsedevkit/lib/bitter/bitter.php');
	require_once(EXTENSIONS . '/browsedevkit/lib/pathlist.php');
	
	class Content_BrowseDevKit_Browse extends DevKit {
		protected $_item = null;
		protected $_link = '';
		protected $_path = '';
		protected $_root = '';
		
		public function __construct() {
			parent::__construct();
			
			$this->_title = __('Browsing');
			$this->_query_string = parent::__buildQueryString(array(
				'symphony-page', 'browse', 'bookmark'
			));
			
			if (!empty($this->_query_string)) {
				$this->_query_string = '&amp;' . General::sanitize($this->_query_string);
			}
		}
		
		public function build() {
			$this->_root = DOCROOT . '/';
			$this->_path = @realpath(strlen(trim($_GET['browse'])) == 0 ? $this->_root : $_GET['browse']);
			$this->_xsl = @file_get_contents($this->_pagedata['filelocation']);
			
			// Keep everything within DOCROOT:
			if (strpos($this->_path, $this->_root) !== 0) {
				$this->_path = $this->_root;
			}
			
			$this->_item = new PathListItem($this->_path);
			
			if ($this->_path != $this->_root) {
				$this->_link = '=' . $this->_item->path($this->_root);
			}
			
			// Toggle bookmarks:
			if (isset($_GET['bookmark'])) {
				$configuration = Frontend::instance()->Configuration;
				$bookmarks = $configuration->get('browsedevkit-bookmarks');
				$path = realpath($_GET['bookmark']);
				
				if (strpos($path, $this->_root) !== 0) {
					$path = $this->_root;
				}
				
				if (!is_array($bookmarks)) $bookmarks = array();
				
				if (in_array($path, $bookmarks)) {
					$bookmarks = array_diff($bookmarks, array($path));
					
				} else {
					$bookmarks[] = $path;
				}
				
				$configuration->set('browsedevkit-bookmarks', $bookmarks);
				
				General::writeFile(CONFIG, "<?php\n\t\$settings = {$configuration};\n", $configuration->get('write_mode', 'file'));
				
				redirect("?browse{$this->_link}{$this->_query_string}");
			}
			
			return parent::build();
		}
		
		
		public function buildContent($wrapper) {
			$this->addStylesheetToHead(URL . '/extensions/browsedevkit/assets/devkit.css', 'screen', 12357434);
			
			// Display directory:
			if ($this->_item->isDirectory()) {
				$this->appendBreadcrumb($wrapper, __('Viewing directory'));
				$this->appendIndex($wrapper);
				
			// Image:
			} else if (strpos($this->_item->mime(), 'image/') === 0) {
				$this->appendBreadcrumb($wrapper, __('Viewing image'));
				$this->appendViewImage($wrapper);
				
			// Edit:
			} else {
				$this->appendBreadcrumb($wrapper, __('Viewing file'));
				$this->appendViewFile($wrapper);
			}
		}
		
		protected function buildJump($wrapper) {
			$list = new XMLElement('ul');
			
			$bookmarks = Frontend::instance()->Configuration->get('browsedevkit-bookmarks');
			$bookmarked = false;
			
			if (is_array($bookmarks)) {
				foreach ($bookmarks as $bookmark) {
					$item = new PathListItem($bookmark);
					$link = '';
					
					if ($bookmark != $this->_root) {
						$link .= '=' . $item->path($this->_root);
					}
					
					if (!$bookmarked and $this->_item->path() == $item->path()) {
						$bookmarked = true;
					}
					
					$list->appendChild($this->buildJumpItem(
						$item->name(),
						"?browse{$link}{$this->_query_string}",
						($this->_item->path() == $item->path()),
						__("Remove"),
						"?browse{$this->_link}&bookmark{$link}{$this->_query_string}"
					));
				}
			}
			
			if (!$bookmarked) {
				$list->appendChild($this->buildJumpItem(
					$this->_item->name(),
					"?browse{$this->_link}{$this->_query_string}",
					true, __("Add"),
					"?browse{$this->_link}&bookmark{$this->_link}{$this->_query_string}"
				));
			}
			
			$wrapper->appendChild($list);
		}
		
		protected function buildJumpItem($name, $link, $active = false, $alt_name = null, $alt_link = null) {
			$item = new XMLElement('li');
			$anchor = Widget::Anchor($name,  $link);
			$anchor->setAttribute('class', 'inactive');
			
			if ($active == true) {
				$anchor->setAttribute('class', 'active');
			}
			
			if ($alt_link) {
				$alt = Widget::Anchor($alt_name, $alt_link);
				$alt->setAttribute('class', 'edit');
				$item->appendChild($alt);
			}
			
			$item->appendChild($anchor);
			
			return $item;
		}
		
		protected function appendBreadcrumb($wrapper, $title) {
			$paths = explode('/', trim(substr($this->_path, strlen(dirname(DOCROOT))), '/'));
			$path = '';
			
			$breadcrumb = new XMLElement('p');
			$breadcrumb->setAttribute('class', 'breadcrumb');
			$breadcrumb->setValue($title);
			
			foreach ($paths as $index => $name) {
				$item = new XMLElement('a');
				
				if ($index) {
					$path .= $name;
					$item->setAttribute('href', "?browse={$path}{$this->_query_string}");
					
					if (is_dir($path)) {
						$item->setValue($name . '/');
						$path .= '/';
						
					} else {
						$item->setValue($name);
					}
					
				} else {
					$item->setAttribute('href', "?browse{$this->_query_string}");
					$item->setValue($name . '/');
				}
				
				$breadcrumb->appendChild($item);
			}
			
			$wrapper->appendChild($breadcrumb);
		}
		
		protected function appendViewImage($wrapper) {
			$image = new XMLElement('img');
			$image->setAttribute('class', 'result');
			$image->setAttribute('src', URL . '/' . $this->_item->path($this->_root));
			$wrapper->appendChild($image);
		}
		
		protected function appendViewFile($wrapper) {
			$source = file_get_contents($this->_item->path());
			$bitter = new Bitter(true);
			$bitter->loadFormat('symphony');
			
			switch ($this->_item->mime()) {
				case 'text/css':
					$bitter->loadLanguage('css'); break;
				
				case 'application/html':
				case 'text/html':
					$bitter->loadLanguage('html'); break;
				
				case 'application/javascript':
				case 'application/x-javascript':
				case 'text/javascript':
				case 'text/x-javascript':
					$bitter->loadLanguage('js'); break;
				
				case 'application/php':
				case 'application/x-php':
				case 'text/php':
				case 'text/x-php':
					$bitter->loadLanguage('php'); break;
					
				case 'application/xml':
				case 'text/xml':
				case 'application/xsl':
				case 'text/xsl':
					$bitter->loadLanguage('xsl'); break;
					
				default:
					$bitter->loadLanguage('default'); break;
			}
			
			$inner = new XMLElement(
				'div', $bitter->process($source)
			);
			$inner->setAttribute('id', 'source');
			$inner->setAttribute('class', 'result');
			
			$wrapper->appendChild($inner);
		}
		
		protected function appendSource($wrapper, $source, $language = 'xml') {
			$bitter = new Bitter(false);
			$bitter->loadFormat('symphony');
			$bitter->loadLanguage($language);
			
			$inner = new XMLElement(
				'div', $bitter->process($source)
			);
			$inner->setAttribute('id', 'source');
			
			$wrapper->appendChild($inner);
		}
		
		protected function appendIndex($wrapper) {
			$list = new PathList($this->_path);
			$directories = $files = array();
			
			// Split into files and directories:
			foreach ($list as $item) {
				// Ignore hidden files:
				if ($item->test('%/\.(?!htaccess)%')) continue;
				
				if ($item->isDirectory()) {
					$directories[$item->name()] = $item;
					
				} else {
					$files[$item->name()] = $item;
				}
			}
			
			$table = new XMLElement('table');
			$table->setAttribute('class', 'result');
			$head = new XMLElement('thead');
			$body = new XMLElement('tbody');
			$row = new XMLElement('tr');
			
			$cell = new XMLElement('th');
			$cell->setAttribute('class', 'name');
			$cell->setValue(__('Name'));
			$row->appendChild($cell);
			
			$cell = new XMLElement('th');
			$cell->setAttribute('class', 'size');
			$cell->setValue(__('Size'));
			$row->appendChild($cell);
			
			$cell = new XMLElement('th');
			$cell->setAttribute('class', 'date');
			$cell->setValue(__('Date'));
			$row->appendChild($cell);
			
			$cell = new XMLElement('th');
			$cell->setAttribute('class', 'type');
			$cell->setValue(__('Type'));
			$row->appendChild($cell);
			
			$cell = new XMLElement('th');
			$cell->setAttribute('class', 'perms');
			$cell->setValue(__('Perms'));
			$row->appendChild($cell);
			$head->appendChild($row);
			$table->appendChild($head);
			
			// List directories:
			uksort($directories, 'strcasecmp');
			array_unshift($directories, new PathListItem($this->_path));
			$count = 0;
			
			foreach ($directories as $directory) {
				$row = new XMLElement('tr');
				
				if (!$count++) {
					$row->setAttribute('class', 'directory first');
					
				} else {
					$row->setAttribute('class', 'directory');
				}
				
				if ($directory->path() == $this->_item->path()) {
					$cell = new XMLElement('td');
					$cell->setValue(__('[current]'));
					$row->appendChild($cell);
					
				} else {
					$cell = new XMLElement('td');
					$cell->setAttribute('class', 'name');
					$link = new XMLElement('a');
					$link->setAttribute('href', '?browse=' . $directory->path($this->_root) . $this->_query_string);
					$link->setValue($directory->name() . '/');
					$cell->appendChild($link);
					$row->appendChild($cell);
				}
				
				$cell = new XMLElement('td');
				$cell->setAttribute('class', 'size');
				$cell->setValue("&#x2013;");
				$row->appendChild($cell);
				
				$this->appendIndexDate($row, $directory);
				$this->appendIndexMime($row, $directory);
				$this->appendIndexPerms($row, $directory);
				$body->appendChild($row);
			}
				
			// List files:
			uksort($files, 'strcasecmp');
			$count = 0;
			
			foreach ($files as $file) {
				$row = new XMLElement('tr');
				
				if (!$count++) {
					$row->setAttribute('class', 'file first');
					
				} else {
					$row->setAttribute('class', 'file');
				}
				
				$cell = new XMLElement('td');
				$link = new XMLElement('a');
				$link->setAttribute('href', '?browse=' . $file->path($this->_root) . $this->_query_string);
				$link->setValue($file->name());
				$cell->appendChild($link);
				$row->appendChild($cell);
				
				$this->appendIndexSize($row, $file);
				$this->appendIndexDate($row, $file);
				$this->appendIndexMime($row, $file);
				$this->appendIndexPerms($row, $file);
				$body->appendChild($row);
			}
			
			$table->appendChild($body);
			$wrapper->appendChild($table);
		}
		
		protected function appendIndexSize($row, $item) {
			$cell = new XMLElement('td');
			$cell->setAttribute('class', 'size');
			
			$size = $item->size();
			$units = 'B';
			
			if ($size > 1073741824 / 4) {
				$size = number_format($size / 1073741824, 1);
				$units = 'GB';
				
			} else if ($size > 1048576 / 4) {
				$size = number_format($size / 1048576, 1);
				$units = 'MB';
				
			} else if ($size > 1024 / 4) {
				$size = number_format($size / 1024, 1);
				$units = 'KB';
			}
			
			$cell->setValue("{$size} {$units}");
			$row->appendChild($cell);
		}
		
		protected function appendIndexDate($row, $item) {
			$cell = new XMLElement('td');
			$cell->setAttribute('class', 'date');
			$cell->setValue(DateTimeObj::get(__SYM_DATETIME_FORMAT__, $item->timeModified()));
			$row->appendChild($cell);
		}
		
		protected function appendIndexMime($row, $item) {
			$cell = new XMLElement('td');
			$cell->setAttribute('class', 'type');
			$cell->setValue($item->mime());
			$row->appendChild($cell);
		}
		
		protected function appendIndexPerms($row, $item) {
			$cell = new XMLElement('td');
			$cell->setAttribute('class', 'perms');
			
			$stat = stat($item->path());
			$user = posix_getpwuid($stat['uid']);
			$user = $user['name'];
			$group = posix_getgrgid($stat['gid']);
			$group = $group['name'];
			$mask = substr(decoct($stat['mode']), -4);
			
			$cell->setValue("{$user}:{$group} {$mask}");
			$row->appendChild($cell);
		}
	}
	
?>