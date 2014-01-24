.class Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;
.super Landroid/os/AsyncTask;
.source "MiCloudAdvancedSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/MiCloudAdvancedSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckPhoneTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCheckCallback:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneCallback;

.field private mProgressDialog:Lmiui/widget/SimpleDialogFragment;

.field final synthetic this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;


# direct methods
.method public constructor <init>(Lmiui/widget/MiCloudAdvancedSettingsBase;Landroid/app/Activity;Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneCallback;)V
    .locals 0
    .parameter
    .parameter "activity"
    .parameter "checkResultCallable"

    .prologue
    .line 831
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 832
    iput-object p2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mActivity:Landroid/app/Activity;

    .line 833
    iput-object p3, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mCheckCallback:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneCallback;

    .line 834
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 822
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->doInBackground([Ljava/lang/Integer;)Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;
    .locals 8
    .parameter "params"

    .prologue
    .line 838
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 839
    .local v4, simIndex:I
    iget-object v6, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #getter for: Lmiui/widget/MiCloudAdvancedSettingsBase;->mCloudManager:Lmiui/net/CloudManager;
    invoke-static {v6}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$000(Lmiui/widget/MiCloudAdvancedSettingsBase;)Lmiui/net/CloudManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lmiui/net/CloudManager;->getActivateStatus(I)Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v2

    .line 841
    .local v2, f:Lmiui/net/CloudManager$CloudManagerFuture;,"Lmiui/net/CloudManager$CloudManagerFuture<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    .line 843
    .local v3, result:Landroid/os/Bundle;
    :try_start_0
    invoke-interface {v2}, Lmiui/net/CloudManager$CloudManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/os/Bundle;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_0
    if-nez v3, :cond_0

    .line 848
    sget-object v6, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;->RESULT_IO_ERROR:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    .line 857
    :goto_1
    return-object v6

    .line 844
    :catch_0
    move-exception v1

    .line 845
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "MiCloudAdvancedSettingsBase"

    const-string v7, "error to get activate status"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 850
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-string v6, "activate_status"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 851
    .local v5, status:I
    packed-switch v5, :pswitch_data_0

    .line 857
    :pswitch_0
    sget-object v6, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;->RESULT_NOT_ACTIVATED:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    goto :goto_1

    .line 855
    :pswitch_1
    sget-object v6, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;->RESULT_OK:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    goto :goto_1

    .line 851
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 822
    check-cast p1, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->onPostExecute(Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;)V

    return-void
.end method

.method protected onPostExecute(Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 874
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mProgressDialog:Lmiui/widget/SimpleDialogFragment;

    #setter for: Lmiui/widget/MiCloudAdvancedSettingsBase;->mCheckPhoneProgressDialog:Landroid/app/DialogFragment;
    invoke-static {v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$1202(Lmiui/widget/MiCloudAdvancedSettingsBase;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    .line 875
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->processCheckPhoneResult()V
    invoke-static {v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$1300(Lmiui/widget/MiCloudAdvancedSettingsBase;)V

    .line 876
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mCheckCallback:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneCallback;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mCheckCallback:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneCallback;

    invoke-interface {v0, p1}, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneCallback;->onCheckPhoneResult(Lmiui/widget/MiCloudAdvancedSettingsBase$CheckResult;)V

    .line 879
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 863
    new-instance v0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->setCancelable(Z)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->create()Lmiui/widget/SimpleDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mProgressDialog:Lmiui/widget/SimpleDialogFragment;

    .line 868
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mProgressDialog:Lmiui/widget/SimpleDialogFragment;

    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CheckPhoneProgress"

    invoke-virtual {v0, v1, v2}, Lmiui/widget/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 870
    return-void
.end method
