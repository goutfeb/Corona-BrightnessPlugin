local metadata =
{
    plugin =
    {
        format = "jar",
        manifest =
        {
            permissions = {},
            usesPermissions =
            {
                "android.permission.INTERNET",
                "android.permission.ACCESS_NETWORK_STATE",
                "android.permission.READ_PHONE_STATE",
            },
            usesFeatures = {},
            applicationChildElements =
            {
                -- Array of strings
                [[
                    <activity android:name="com.mycompany.MyActivity"
                    android:configChanges="keyboard|keyboardHidden"/>
                ]],
            },
        },
    },
    coronaManifest = {
        dependencies = {
        },
    },
}
