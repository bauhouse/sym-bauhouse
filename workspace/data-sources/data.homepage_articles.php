<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcehomepage_articles extends Datasource{
		
		public $dsParamROOTELEMENT = 'homepage-articles';
		public $dsParamORDER = 'desc';
		public $dsParamLIMIT = '5';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamPARAMOUTPUT = 'system:id';
		public $dsParamSORT = 'date';
		public $dsParamSTARTPAGE = '1';
		
		public $dsParamFILTERS = array(
				'22' => 'yes',
		);
		
		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'heading',
				'description',
				'body',
				'images',
				'files',
				'section',
				'categories',
				'tags',
				'date',
				'author',
				'enable-comments'
		);

		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		public function about(){
			return array(
					 'name' => 'Homepage Articles',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/site',
							'email' => 'bauhouse@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2009-07-07T14:58:26+00:00');	
		}
		
		public function getSource(){
			return '3';
		}
		
		public function allowEditorToParse(){
			return true;
		}
		
		public function grab(&$param_pool){
			$result = new XMLElement($this->dsParamROOTELEMENT);
				
			try{
				include(TOOLKIT . '/data-sources/datasource.section.php');
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}	

			if($this->_force_empty_result) $result = $this->emptyXMLSet();
			return $result;
		}
	}

