<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcesection_image extends Datasource{
		
		public $dsParamROOTELEMENT = 'section-image';
		public $dsParamORDER = 'desc';
		public $dsParamLIMIT = '20';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamPARAMOUTPUT = 'image';
		public $dsParamSORT = 'system:id';
		public $dsParamSTARTPAGE = '1';
		
		public $dsParamFILTERS = array(
				'4' => '{$current-page-id}',
				'10' => 'yes',
		);
		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		public function about(){
			return array(
					 'name' => 'Section Image',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://localhost/sym/bauhouse',
							'email' => 'bauhouse@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2009-07-21T05:15:01+00:00');	
		}
		
		public function getSource(){
			return '2';
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

