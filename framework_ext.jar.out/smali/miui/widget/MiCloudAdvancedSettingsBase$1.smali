.class Lmiui/widget/MiCloudAdvancedSettingsBase$1;
.super Landroid/os/AsyncTask;
.source "MiCloudAdvancedSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/MiCloudAdvancedSettingsBase;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;


# direct methods
.method constructor <init>(Lmiui/widget/MiCloudAdvancedSettingsBase;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x0

    .line 173
    iget-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    invoke-static {v5}, Lmiui/msim/telephony/MiuiTelephonyManager;->getInstance(Landroid/content/Context;)Lmiui/msim/telephony/IMiuiTelephonyManager;

    move-result-object v4

    .line 175
    .local v4, tm:Lmiui/msim/telephony/IMiuiTelephonyManager;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v4}, Lmiui/msim/telephony/IMiuiTelephonyManager;->getSimCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 176
    invoke-interface {v4, v2}, Lmiui/msim/telephony/IMiuiTelephonyManager;->getSimId(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 177
    iget-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #getter for: Lmiui/widget/MiCloudAdvancedSettingsBase;->mCloudManager:Lmiui/net/CloudManager;
    invoke-static {v5}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$000(Lmiui/widget/MiCloudAdvancedSettingsBase;)Lmiui/net/CloudManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lmiui/net/CloudManager;->getActivateStatus(I)Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v1

    .line 180
    .local v1, f:Lmiui/net/CloudManager$CloudManagerFuture;,"Lmiui/net/CloudManager$CloudManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {v1}, Lmiui/net/CloudManager$CloudManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "activate_status"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 182
    .local v3, status:I
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/util/Pair;

    const/4 v6, 0x0

    new-instance v7, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v1           #f:Lmiui/net/CloudManager$CloudManagerFuture;,"Lmiui/net/CloudManager$CloudManagerFuture<Landroid/os/Bundle;>;"
    .end local v3           #status:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    .restart local v1       #f:Lmiui/net/CloudManager$CloudManagerFuture;,"Lmiui/net/CloudManager$CloudManagerFuture<Landroid/os/Bundle;>;"
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "MiCloudAdvancedSettingsBase"

    const-string v6, "failed to get activate status"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 190
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #f:Lmiui/net/CloudManager$CloudManagerFuture;,"Lmiui/net/CloudManager$CloudManagerFuture<Landroid/os/Bundle;>;"
    :goto_1
    return-object v5

    :cond_1
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 170
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 222
    const-string v0, "MiCloudAdvancedSettingsBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get error status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    invoke-virtual {v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->finish()V

    .line 225
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 170
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 196
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #getter for: Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;
    invoke-static {v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$100(Lmiui/widget/MiCloudAdvancedSettingsBase;)Lmiui/widget/SyncStatePreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #getter for: Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;
    invoke-static {v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$100(Lmiui/widget/MiCloudAdvancedSettingsBase;)Lmiui/widget/SyncStatePreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setEnabled(Z)V

    .line 199
    :cond_0
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #getter for: Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;
    invoke-static {v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$200(Lmiui/widget/MiCloudAdvancedSettingsBase;)Lmiui/widget/SyncStatePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #getter for: Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim1SyncPref:Lmiui/widget/SyncStatePreference;
    invoke-static {v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$200(Lmiui/widget/MiCloudAdvancedSettingsBase;)Lmiui/widget/SyncStatePreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setEnabled(Z)V

    .line 202
    :cond_1
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #getter for: Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;
    invoke-static {v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$300(Lmiui/widget/MiCloudAdvancedSettingsBase;)Lmiui/widget/SyncStatePreference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #getter for: Lmiui/widget/MiCloudAdvancedSettingsBase;->mSim2SyncPref:Lmiui/widget/SyncStatePreference;
    invoke-static {v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$300(Lmiui/widget/MiCloudAdvancedSettingsBase;)Lmiui/widget/SyncStatePreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setEnabled(Z)V

    .line 205
    :cond_2
    return-void
.end method

.method protected varargs onProgressUpdate([Landroid/util/Pair;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, values:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .line 210
    .local v3, value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 211
    .local v0, simIndex:Ljava/lang/Integer;
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 212
    .local v1, status:Ljava/lang/Integer;
    iget-object v4, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #getter for: Lmiui/widget/MiCloudAdvancedSettingsBase;->mActivateStatus:[I
    invoke-static {v4}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$400(Lmiui/widget/MiCloudAdvancedSettingsBase;)[I

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    .line 213
    iget-object v4, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    invoke-static {v4}, Lmiui/msim/telephony/MiuiTelephonyManager;->getInstance(Landroid/content/Context;)Lmiui/msim/telephony/IMiuiTelephonyManager;

    move-result-object v2

    .line 214
    .local v2, tm:Lmiui/msim/telephony/IMiuiTelephonyManager;
    iget-object v4, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #getter for: Lmiui/widget/MiCloudAdvancedSettingsBase;->mSimInsertStates:[Z
    invoke-static {v4}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$500(Lmiui/widget/MiCloudAdvancedSettingsBase;)[Z

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v2, v6}, Lmiui/msim/telephony/IMiuiTelephonyManager;->isSimInserted(I)Z

    move-result v6

    aput-boolean v6, v4, v5

    .line 215
    iget-object v4, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->updateSyncState(I)V
    invoke-static {v4, v5}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$600(Lmiui/widget/MiCloudAdvancedSettingsBase;I)V

    .line 216
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 170
    check-cast p1, [Landroid/util/Pair;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->onProgressUpdate([Landroid/util/Pair;)V

    return-void
.end method
