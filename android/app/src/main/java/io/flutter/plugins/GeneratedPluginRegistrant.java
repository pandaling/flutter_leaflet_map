package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import com.hemanthraj.fluttercompass.FlutterCompassPlugin;
import com.lyokone.location.LocationPlugin;
import io.flutter.plugins.pathprovider.PathProviderPlugin;
import com.tekartik.sqflite.SqflitePlugin;
import com.example.user_location.UserLocationPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    FlutterCompassPlugin.registerWith(registry.registrarFor("com.hemanthraj.fluttercompass.FlutterCompassPlugin"));
    LocationPlugin.registerWith(registry.registrarFor("com.lyokone.location.LocationPlugin"));
    PathProviderPlugin.registerWith(registry.registrarFor("io.flutter.plugins.pathprovider.PathProviderPlugin"));
    SqflitePlugin.registerWith(registry.registrarFor("com.tekartik.sqflite.SqflitePlugin"));
    UserLocationPlugin.registerWith(registry.registrarFor("com.example.user_location.UserLocationPlugin"));
  }

  private static boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    registry.registrarFor(key);
    return false;
  }
}
