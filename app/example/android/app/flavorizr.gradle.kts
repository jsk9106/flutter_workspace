import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("dev") {
            dimension = "flavor-type"
            applicationId = "com.example.dev"
            resValue(type = "string", name = "app_name", value = "[DEV]example")
        }
        create("prod") {
            dimension = "flavor-type"
            applicationId = "com.example"
            resValue(type = "string", name = "app_name", value = "example")
        }
    }
}