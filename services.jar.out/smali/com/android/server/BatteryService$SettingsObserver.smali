.class Lcom/android/server/BatteryService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 828
    iput-object p1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 829
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 830
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 833
    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 836
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "battery_light_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 840
    const-string v1, "battery_light_pulse"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 844
    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mMultiColorLed:Z
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 846
    const-string v1, "battery_light_low_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 848
    const-string v1, "battery_light_medium_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 850
    const-string v1, "battery_light_full_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 855
    :cond_0
    const-string v1, "quiet_hours_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 857
    const-string v1, "quiet_hours_start"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 859
    const-string v1, "quiet_hours_end"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 861
    const-string v1, "quiet_hours_dim"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 864
    invoke-virtual {p0}, Lcom/android/server/BatteryService$SettingsObserver;->update()V

    .line 865
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/android/server/BatteryService$SettingsObserver;->update()V

    .line 869
    return-void
.end method

.method public update()V
    .locals 8

    .prologue
    const/4 v7, -0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 872
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 873
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 876
    .local v0, res:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "battery_light_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    #setter for: Lcom/android/server/BatteryService;->mLightEnabled:Z
    invoke-static {v5, v2}, Lcom/android/server/BatteryService;->access$702(Lcom/android/server/BatteryService;Z)Z

    .line 880
    iget-object v5, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "battery_light_pulse"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    #setter for: Lcom/android/server/BatteryService;->mLedPulseEnabled:Z
    invoke-static {v5, v2}, Lcom/android/server/BatteryService;->access$1002(Lcom/android/server/BatteryService;Z)Z

    .line 884
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v5, "battery_light_low_color"

    const v6, 0x10e001e

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/server/BatteryService;->mBatteryLowARGB:I
    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->access$1202(Lcom/android/server/BatteryService;I)I

    .line 887
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v5, "battery_light_medium_color"

    const v6, 0x10e001f

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/server/BatteryService;->mBatteryMediumARGB:I
    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->access$1402(Lcom/android/server/BatteryService;I)I

    .line 890
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v5, "battery_light_full_color"

    const v6, 0x10e0020

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/server/BatteryService;->mBatteryFullARGB:I
    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->access$1302(Lcom/android/server/BatteryService;I)I

    .line 895
    iget-object v5, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "quiet_hours_enabled"

    invoke-static {v1, v2, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    #setter for: Lcom/android/server/BatteryService;->mQuietHoursEnabled:Z
    invoke-static {v5, v2}, Lcom/android/server/BatteryService;->access$1502(Lcom/android/server/BatteryService;Z)Z

    .line 897
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v5, "quiet_hours_start"

    invoke-static {v1, v5, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    #setter for: Lcom/android/server/BatteryService;->mQuietHoursStart:I
    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->access$1602(Lcom/android/server/BatteryService;I)I

    .line 899
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v5, "quiet_hours_end"

    invoke-static {v1, v5, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    #setter for: Lcom/android/server/BatteryService;->mQuietHoursEnd:I
    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->access$1702(Lcom/android/server/BatteryService;I)I

    .line 901
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v5, "quiet_hours_dim"

    invoke-static {v1, v5, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_3

    :goto_3
    #setter for: Lcom/android/server/BatteryService;->mQuietHoursDim:Z
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$902(Lcom/android/server/BatteryService;Z)Z

    .line 904
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #calls: Lcom/android/server/BatteryService;->updateLedPulse()V
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)V

    .line 905
    return-void

    :cond_0
    move v2, v4

    .line 876
    goto :goto_0

    :cond_1
    move v2, v4

    .line 880
    goto :goto_1

    :cond_2
    move v2, v4

    .line 895
    goto :goto_2

    :cond_3
    move v3, v4

    .line 901
    goto :goto_3
.end method
