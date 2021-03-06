-- updating the side menus
-- removing or renaming unfriendly titles from performance menu
DELETE FROM topology WHERE topology_name = "Graphs" AND topology_parent = 204 AND topology_page IS NULL;
DELETE FROM topology WHERE topology_name = "Templates" AND topology_parent = 204 AND topology_page IS NULL;
UPDATE topology SET topology_name = "Parameters" WHERE topology_name = "Virtuals" AND topology_parent = 204;
UPDATE topology SET topology_name = "Virtual Metrics" WHERE topology_page = 20408;

-- grouping the menus under Parameters
UPDATE topology SET topology_group = 46 WHERE topology_page IN (20404, 20405, 20408);

-- removing unfriendly titles from Configuration menu
DELETE FROM topology WHERE topology_name = "Services" AND topology_parent = 602 AND topology_page IS NULL;
DELETE FROM topology WHERE topology_name = "Meta Services" AND topology_parent = 602 AND topology_page IS NULL;

-- removing unfriendly titles from Configuration menu
DELETE FROM topology WHERE topology_name = "Commands" AND topology_parent = 608 AND topology_page IS NULL;
DELETE FROM topology WHERE topology_name = "Connectors" AND topology_parent = 608 AND topology_page IS NULL;

-- removing the CSS page from Administration menu
DELETE FROM topology WHERE topology_name = "CSS" AND topology_parent = 501 AND topology_page = 50116;

-- removing unfriendly title from Logs menu
DELETE FROM topology WHERE topology_name = "Visualisation" AND topology_parent = 508 AND topology_page = 50801;





