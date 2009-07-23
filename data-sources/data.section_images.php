<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcesection_images extends Datasource{
		
		public $dsParamROOTELEMENT = 'section-images';
		public $dsParamORDER = 'desc';
		public $dsParamLIMIT = '20';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamREQUIREDPARAM = '$ds-section-image';
		public $dsParamSORT = 'system:id';
		public $dsParamSTARTPAGE = '1';
		
		public $dsParamFILTERS = array(
				'id' => '{$ds-section-image}',
		);
		
		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'caption',
				'image'
		);

		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array('$ds-section-image');
		}
		
		public function about(){
			return array(
					 'name' => 'Section Images',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://localhost/sym/bauhouse',
							'email' => 'bauhouse@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2009-07-20T23:40:25+00:00');	
		}
		
		public function getSource(){
			return '11';
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

