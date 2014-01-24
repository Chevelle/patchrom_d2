.class public Lmiui/provider/yellowpage/utils/Sim;
.super Ljava/lang/Object;
.source "Sim.java"


# static fields
.field public static final CHINA_MOBILE_OPS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CHINA_TELECOM_OPS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CHINA_UNICOM_OPS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SIM_INDEX:I = -0x1

.field public static final MASTER_SIM_INDEX:I = 0x0

.field public static final SLAVE_SIM_INDEX:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/provider/yellowpage/utils/Sim;->CHINA_MOBILE_OPS:Ljava/util/Set;

    .line 31
    sget-object v0, Lmiui/provider/yellowpage/utils/Sim;->CHINA_MOBILE_OPS:Ljava/util/Set;

    const-string v1, "46000"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lmiui/provider/yellowpage/utils/Sim;->CHINA_MOBILE_OPS:Ljava/util/Set;

    const-string v1, "46002"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lmiui/provider/yellowpage/utils/Sim;->CHINA_MOBILE_OPS:Ljava/util/Set;

    const-string v1, "46007"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/provider/yellowpage/utils/Sim;->CHINA_UNICOM_OPS:Ljava/util/Set;

    .line 38
    sget-object v0, Lmiui/provider/yellowpage/utils/Sim;->CHINA_UNICOM_OPS:Ljava/util/Set;

    const-string v1, "46001"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lmiui/provider/yellowpage/utils/Sim;->CHINA_UNICOM_OPS:Ljava/util/Set;

    const-string v1, "46006"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/provider/yellowpage/utils/Sim;->CHINA_TELECOM_OPS:Ljava/util/Set;

    .line 44
    sget-object v0, Lmiui/provider/yellowpage/utils/Sim;->CHINA_TELECOM_OPS:Ljava/util/Set;

    const-string v1, "46003"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lmiui/provider/yellowpage/utils/Sim;->CHINA_TELECOM_OPS:Ljava/util/Set;

    const-string v1, "46005"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lmiui/provider/yellowpage/utils/Sim;->CHINA_TELECOM_OPS:Ljava/util/Set;

    const-string v1, "46009"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaultPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    .line 61
    const/4 v3, 0x0

    .line 64
    .local v3, phoneNumber:Ljava/lang/String;
    invoke-static {p0}, Lmiui/net/CloudManager;->get(Landroid/content/Context;)Lmiui/net/CloudManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lmiui/net/CloudManager;->getActivatedPhoneNumber(I)Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v2

    .line 66
    .local v2, f:Lmiui/net/CloudManager$CloudManagerFuture;,"Lmiui/net/CloudManager$CloudManagerFuture<Landroid/os/Bundle;>;"
    const-wide/16 v5, 0xbb8

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v5, v6, v7}, Lmiui/net/CloudManager$CloudManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 67
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "activate_phone"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmiui/net/exception/OperationCancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/net/exception/CloudServiceFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmiui/net/exception/NoActivateAccountException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 77
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    invoke-interface {v2, v8}, Lmiui/net/CloudManager$CloudManagerFuture;->cancel(Z)Z

    .line 80
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 83
    .local v4, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 86
    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    return-object v3

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-interface {v2, v8}, Lmiui/net/CloudManager$CloudManagerFuture;->cancel(Z)Z

    throw v5

    .line 70
    :catch_1
    move-exception v1

    .line 71
    .local v1, e:Lmiui/net/exception/OperationCancelledException;
    :try_start_2
    invoke-virtual {v1}, Lmiui/net/exception/OperationCancelledException;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v1           #e:Lmiui/net/exception/OperationCancelledException;
    :catch_2
    move-exception v1

    .line 73
    .local v1, e:Lmiui/net/exception/CloudServiceFailureException;
    invoke-virtual {v1}, Lmiui/net/exception/CloudServiceFailureException;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v1           #e:Lmiui/net/exception/CloudServiceFailureException;
    :catch_3
    move-exception v1

    .line 75
    .local v1, e:Lmiui/net/exception/NoActivateAccountException;
    invoke-virtual {v1}, Lmiui/net/exception/NoActivateAccountException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static getDefaultSimAreaCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 90
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Sim;->getDefaultPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, phoneNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const/4 v1, 0x0

    .line 94
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getDefaultSimOp(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 98
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Device;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "simIndex"

    .prologue
    const/4 v8, 0x1

    .line 123
    const/4 v5, -0x1

    if-ne p1, v5, :cond_1

    .line 124
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Sim;->getDefaultPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 150
    :cond_0
    :goto_0
    return-object v3

    .line 127
    :cond_1
    const/4 v3, 0x0

    .line 129
    .local v3, phoneNumber:Ljava/lang/String;
    invoke-static {p0}, Lmiui/net/CloudManager;->get(Landroid/content/Context;)Lmiui/net/CloudManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lmiui/net/CloudManager;->getActivatedPhoneNumber(I)Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v2

    .line 131
    .local v2, f:Lmiui/net/CloudManager$CloudManagerFuture;,"Lmiui/net/CloudManager$CloudManagerFuture<Landroid/os/Bundle;>;"
    const-wide/16 v5, 0xbb8

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v5, v6, v7}, Lmiui/net/CloudManager$CloudManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 132
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "activate_phone"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmiui/net/exception/OperationCancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/net/exception/CloudServiceFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmiui/net/exception/NoActivateAccountException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 142
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_1
    invoke-interface {v2, v8}, Lmiui/net/CloudManager$CloudManagerFuture;->cancel(Z)Z

    .line 145
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    invoke-static {p0}, Lmiui/msim/telephony/MiuiTelephonyManager;->getInstance(Landroid/content/Context;)Lmiui/msim/telephony/IMiuiTelephonyManager;

    move-result-object v4

    .line 147
    .local v4, tm:Lmiui/msim/telephony/IMiuiTelephonyManager;
    invoke-interface {v4, p1}, Lmiui/msim/telephony/IMiuiTelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 133
    .end local v4           #tm:Lmiui/msim/telephony/IMiuiTelephonyManager;
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 142
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-interface {v2, v8}, Lmiui/net/CloudManager$CloudManagerFuture;->cancel(Z)Z

    throw v5

    .line 135
    :catch_1
    move-exception v1

    .line 136
    .local v1, e:Lmiui/net/exception/OperationCancelledException;
    :try_start_2
    invoke-virtual {v1}, Lmiui/net/exception/OperationCancelledException;->printStackTrace()V

    goto :goto_1

    .line 137
    .end local v1           #e:Lmiui/net/exception/OperationCancelledException;
    :catch_2
    move-exception v1

    .line 138
    .local v1, e:Lmiui/net/exception/CloudServiceFailureException;
    invoke-virtual {v1}, Lmiui/net/exception/CloudServiceFailureException;->printStackTrace()V

    goto :goto_1

    .line 139
    .end local v1           #e:Lmiui/net/exception/CloudServiceFailureException;
    :catch_3
    move-exception v1

    .line 140
    .local v1, e:Lmiui/net/exception/NoActivateAccountException;
    invoke-virtual {v1}, Lmiui/net/exception/NoActivateAccountException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static getSimAreaCode(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "simIndex"

    .prologue
    .line 154
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 155
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Sim;->getDefaultSimAreaCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 162
    :goto_0
    return-object v1

    .line 158
    :cond_0
    invoke-static {p0, p1}, Lmiui/provider/yellowpage/utils/Sim;->getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, phoneNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    const/4 v1, 0x0

    goto :goto_0

    .line 162
    :cond_1
    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSimCount(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 166
    invoke-static {p0}, Lmiui/msim/telephony/MiuiTelephonyManager;->getInstance(Landroid/content/Context;)Lmiui/msim/telephony/IMiuiTelephonyManager;

    move-result-object v0

    .line 167
    .local v0, tm:Lmiui/msim/telephony/IMiuiTelephonyManager;
    invoke-interface {v0}, Lmiui/msim/telephony/IMiuiTelephonyManager;->getSimCount()I

    move-result v1

    return v1
.end method

.method public static getSimOpCode(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "simIndex"

    .prologue
    .line 171
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 172
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Sim;->getDefaultSimOp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 176
    :goto_0
    return-object v1

    .line 175
    :cond_0
    invoke-static {p0}, Lmiui/msim/telephony/MiuiTelephonyManager;->getInstance(Landroid/content/Context;)Lmiui/msim/telephony/IMiuiTelephonyManager;

    move-result-object v0

    .line 176
    .local v0, tm:Lmiui/msim/telephony/IMiuiTelephonyManager;
    invoke-interface {v0, p1}, Lmiui/msim/telephony/IMiuiTelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static isDefaultSimCardReady(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 103
    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 105
    .local v1, tm:Landroid/telephony/TelephonyManager;
    const/4 v3, 0x5

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 110
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return v2

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isSimCardReady(Landroid/content/Context;I)Z
    .locals 3
    .parameter "context"
    .parameter "simIndex"

    .prologue
    .line 114
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 115
    invoke-static {p0}, Lmiui/provider/yellowpage/utils/Sim;->isDefaultSimCardReady(Landroid/content/Context;)Z

    move-result v1

    .line 119
    :goto_0
    return v1

    .line 118
    :cond_0
    invoke-static {p0}, Lmiui/msim/telephony/MiuiTelephonyManager;->getInstance(Landroid/content/Context;)Lmiui/msim/telephony/IMiuiTelephonyManager;

    move-result-object v0

    .line 119
    .local v0, tm:Lmiui/msim/telephony/IMiuiTelephonyManager;
    invoke-interface {v0, p1}, Lmiui/msim/telephony/IMiuiTelephonyManager;->getSimState(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTheSameOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "simOp1"
    .parameter "simOp2"

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lmiui/provider/yellowpage/utils/Sim;->CHINA_MOBILE_OPS:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lmiui/provider/yellowpage/utils/Sim;->CHINA_MOBILE_OPS:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    sget-object v1, Lmiui/provider/yellowpage/utils/Sim;->CHINA_UNICOM_OPS:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lmiui/provider/yellowpage/utils/Sim;->CHINA_UNICOM_OPS:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    sget-object v1, Lmiui/provider/yellowpage/utils/Sim;->CHINA_TELECOM_OPS:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lmiui/provider/yellowpage/utils/Sim;->CHINA_TELECOM_OPS:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
