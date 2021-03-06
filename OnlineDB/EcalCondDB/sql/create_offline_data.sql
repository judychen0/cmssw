-- Create payload object tables generated from EcalPedestals-mapping-custom.xml
CREATE TABLE CMS_ECAL."ECALPEDESTALS" ( "IOV_VALUE_ID" NUMBER(10), CONSTRAINT "ECALPEDESTALS_PK" PRIMARY KEY ( "IOV_VALUE_ID" ) );
CREATE TABLE CMS_ECAL."ECALPEDESTALS_ITEM" ( "POS" NUMBER(10) NOT NULL, "IOV_VALUE_ID" NUMBER(10) NOT NULL, "MEAN_X1" BINARY_FLOAT NOT NULL, "MEAN_X12" BINARY_FLOAT NOT NULL, "MEAN_X6" BINARY_FLOAT NOT NULL, "RMS_X1" BINARY_FLOAT NOT NULL, "RMS_X12" BINARY_FLOAT NOT NULL, "RMS_X6" BINARY_FLOAT NOT NULL, "DET_ID" NUMBER(10) NOT NULL, CONSTRAINT "ECALPEDESTALS_ITEM_PK" PRIMARY KEY ( "IOV_VALUE_ID","POS" ), CONSTRAINT "ECALPEDESTALS_ITEM_ID_FK" FOREIGN KEY ( "IOV_VALUE_ID" ) REFERENCES CMS_ECAL."ECALPEDESTALS" ( "IOV_VALUE_ID" ) );

-- Add TIME column for IOV
ALTER TABLE CMS_ECAL."ECALPEDESTALS" ADD "TIME" NUMBER(10);
