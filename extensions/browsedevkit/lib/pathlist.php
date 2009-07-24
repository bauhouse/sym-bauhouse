<?php
/*----------------------------------------------------------------------------*/
	
	class PathList implements Iterator {
		protected $files = array();
		
		public function __construct($path) {
			$files = glob(realpath($path) . '/{,.}*', GLOB_BRACE);
			
			foreach ($files as $file) if (basename($file) != '.' and basename($file) != '..') {
				$this->files[] = new PathListItem($file);
			}
		}
		
		public function rewind() {
			return reset($this->files);
		}
		
		public function current() {
			return current($this->files);
		}
		
		public function key() {
			return key($this->files);
		}
		
		public function next() {
			return next($this->files);
		}
		
		public function valid() {
			return $this->current() !== false;
		}
	}
	
	class PathListItem {
		protected $path = null;
		protected $mime = null;
		protected $size = null;
		protected $is_directory = null;
		protected $is_executable = null;
		protected $is_file = null;
		protected $is_link = null;
		protected $is_readable = null;
		protected $is_writable = null;
		protected $time_accessed = null;
		protected $time_created = null;
		protected $time_modified = null;
		
		public function __construct($path) {
			$this->path = realpath($path);
		}
		
		public function __toString() {
			return $this->path;
		}
		
		public function path($relative = null) {
			if (!is_null($relative) and is_dir($relative)) {
				return substr($this->path, strlen($relative));
			}
			
			return $this->path;
		}
		
		public function name() {
			return basename($this->path);
		}
		
		public function mime() {
			if (is_null($this->mime)) {
				if (strtolower(substr(PHP_OS, 0, 3)) != 'win') {
					$this->mime = preg_replace(
						'/[;\s].+$/', '',
						exec("file -bi '{$this->path}'")
					);
				}
				
				else {
					$this->mime = mime_content_type($this->path);
				}
			}
			
			return $this->mime;
		}
		
		public function test($expression) {
			return preg_match($expression, $this->path);
		}
		
		public function size() {
			return filesize($this->path);
		}
		
		public function isDirectory() {
			if (is_null($this->is_directory)) {
				$this->is_directory = is_dir($this->path);
			}
			
			return $this->is_directory;
		}
		
		public function isExecutable() {
			if (is_null($this->is_executable)) {
				$this->is_executable = is_executable($this->path);
			}
			
			return $this->is_executable;
		}
		
		public function isFile() {
			if (is_null($this->is_file)) {
				$this->is_file = is_file($this->path);
			}
			
			return $this->is_file;
		}
		
		public function isLink() {
			if (is_null($this->is_link)) {
				$this->is_link = is_link($this->path);
			}
			
			return $this->is_link;
		}
		
		public function isReadable() {
			if (is_null($this->is_readable)) {
				$this->is_readable = is_readable($this->path);
			}
			
			return $this->is_readable;
		}
		
		public function isWritable() {
			if (is_null($this->is_writable)) {
				$this->is_writable = is_writable($this->path);
			}
			
			return $this->is_writable;
		}
		
		public function timeAccessed() {
			if (is_null($this->time_accessed)) {
				$this->time_accessed = fileatime($this->path);
			}
			
			return $this->time_accessed;
		}
		
		public function timeCreated() {
			if (is_null($this->time_created)) {
				$this->time_created = filectime($this->path);
			}
			
			return $this->time_created;
		}
		
		public function timeModified() {
			if (is_null($this->time_modified)) {
				$this->time_modified = filemtime($this->path);
			}
			
			return $this->time_modified;
		}
	}
	
/*----------------------------------------------------------------------------*/
?>