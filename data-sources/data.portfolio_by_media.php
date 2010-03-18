<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourceportfolio_by_media extends Datasource{
		
		public $dsParamROOTELEMENT = 'portfolio-by-media';
		public $dsParamORDER = 'desc';
		public $dsParamLIMIT = '16';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'created';
		public $dsParamSTARTPAGE = '1';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		
		public $dsParamFILTERS = array(
				'68' => '{$current-page}',
		);
		
		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'link',
				'created',
				'client',
				'project',
				'media',
				'description: formatted',
				'body: formatted',
				'firm',
				'type',
				'creative-direction',
				'art-direction',
				'design',
				'photography',
				'printing',
				'copywriting',
				'image',
				'preview',
				'preview-off',
				'thumbnail',
				'thumbnail-off'
		);

		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		public function about(){
			return array(
					 'name' => 'Portfolio by Media',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/bauhouse-207',
							'email' => 'bauhouse@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2010-02-15T15:44:28+00:00');	
		}
		
		public function getSource(){
			return '12';
		}
		
		public function allowEditorToParse(){
			return true;
		}
		
		public function grab(&$param_pool=NULL){
			$result = new XMLElement($this->dsParamROOTELEMENT);
				
			try{
				include(TOOLKIT . '/data-sources/datasource.section.php');
			}
			catch(FrontendPageNotFoundException $e){
				// Work around. This ensures the 404 page is displayed and
				// is not picked up by the default catch() statement below
				FrontendPageNotFoundExceptionHandler::render($e);
			}			
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}	

			if($this->_force_empty_result) $result = $this->emptyXMLSet();
			return $result;
		}
	}

