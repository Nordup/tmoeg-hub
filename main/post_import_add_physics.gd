@tool
extends EditorScenePostImport


func _post_import(scene: Node) -> Object:
	print("adding physics to " + str(scene.name))
	
	var meshes = scene.find_children("*", "MeshInstance3D") as Array[MeshInstance3D]
	for mesh in meshes: mesh.create_trimesh_collision()
	
	return scene
