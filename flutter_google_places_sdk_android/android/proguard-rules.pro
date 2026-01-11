# Google Places SDK
-keep class com.google.android.libraries.places.** { *; }
-keep class com.google.android.gms.** { *; }

# Keep service provider classes
-keep class * extends java.util.ServiceLoader
-keepclassmembers class * extends java.util.ServiceLoader {
    public <init>();
}

# Keep classes loaded via ServiceLoader
-keepnames class com.google.android.libraries.places.internal.**
-keep class com.google.android.libraries.places.internal.** {
    public <init>();
    public <init>(...);
}

# gRPC / OkHttp (used by Places SDK)
-dontwarn okio.**
-dontwarn javax.annotation.**
-keepnames class io.grpc.** { *; }
-keep class io.grpc.** { *; }
