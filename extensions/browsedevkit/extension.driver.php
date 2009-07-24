<?php
	
	class Extension_BrowseDevKit extends Extension {
	/*-------------------------------------------------------------------------
		Definition:
	-------------------------------------------------------------------------*/
		
		public static $active = false;
		
		public function about() {
			return array(
				'name'			=> 'Browse DevKit',
				'version'		=> '1.0.1',
				'release-date'	=> '2009-05-20',
				'author'		=> array(
					'name'			=> 'Rowan Lewis',
					'website'		=> 'http://pixelcarnage.com/',
					'email'			=> 'rowan@pixelcarnage.com'
				)
			);
		}
		
		public function getSubscribedDelegates() {
			return array(
				array(
					'page'		=> '/frontend/',
					'delegate'	=> 'FrontendDevKitResolve',
					'callback'	=> 'frontendDevKitResolve'
				),
				array(
					'page'		=> '/frontend/',
					'delegate'	=> 'ManipulateDevKitNavigation',
					'callback'	=> 'manipulateDevKitNavigation'
				)
			);
		}
		
		public function frontendDevKitResolve($context) {
			if (isset($_GET['browse'])) {
				require_once(EXTENSIONS . '/browsedevkit/content/content.browse.php');
				
				$context['devkit'] = new Content_BrowseDevkit_Browse();
				$context['full_generate'] = false;
				self::$active = true;
			}
		}
		
		public function manipulateDevKitNavigation($context) {
			$xml = $context['xml'];
			$item = $xml->createElement('item');
			$item->setAttribute('name', __('Browse'));
			$item->setAttribute('handle', 'browse');
			$item->setAttribute('active', (self::$active ? 'yes' : 'no'));
			
			$xml->documentElement->appendChild($item);
		}
	}
	
?>