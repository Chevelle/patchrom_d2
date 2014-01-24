.class final enum Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;
.super Ljava/lang/Enum;
.source "MiCloudAdvancedSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/MiCloudAdvancedSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CheckResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

.field public static final enum RESULT_IO_ERROR:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

.field public static final enum RESULT_NOT_ACTIVATED:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

.field public static final enum RESULT_OK:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 890
    new-instance v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;->RESULT_OK:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    .line 891
    new-instance v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    const-string v1, "RESULT_NOT_ACTIVATED"

    invoke-direct {v0, v1, v3}, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;->RESULT_NOT_ACTIVATED:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    .line 892
    new-instance v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    const-string v1, "RESULT_IO_ERROR"

    invoke-direct {v0, v1, v4}, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;->RESULT_IO_ERROR:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    .line 889
    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    sget-object v1, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;->RESULT_OK:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;->RESULT_NOT_ACTIVATED:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;->RESULT_IO_ERROR:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;->$VALUES:[Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 889
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;
    .locals 1
    .parameter "name"

    .prologue
    .line 889
    const-class v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    return-object v0
.end method

.method public static values()[Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;
    .locals 1

    .prologue
    .line 889
    sget-object v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;->$VALUES:[Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    invoke-virtual {v0}, [Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    return-object v0
.end method
