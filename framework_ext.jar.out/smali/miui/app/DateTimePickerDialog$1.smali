.class Lmiui/app/DateTimePickerDialog$1;
.super Landroid/os/Handler;
.source "DateTimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/DateTimePickerDialog;->init(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/DateTimePickerDialog;


# direct methods
.method constructor <init>(Lmiui/app/DateTimePickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 52
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    iget-object v3, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    invoke-virtual {v3}, Lmiui/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    #getter for: Lmiui/app/DateTimePickerDialog;->mTimeInMillis:J
    invoke-static {v4}, Lmiui/app/DateTimePickerDialog;->access$000(Lmiui/app/DateTimePickerDialog;)J

    move-result-wide v4

    const/16 v6, 0x14

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, dayText:Ljava/lang/String;
    iget-object v3, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    invoke-virtual {v3}, Lmiui/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    #getter for: Lmiui/app/DateTimePickerDialog;->mTimeInMillis:J
    invoke-static {v4}, Lmiui/app/DateTimePickerDialog;->access$000(Lmiui/app/DateTimePickerDialog;)J

    move-result-wide v4

    const/16 v6, 0x83

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, weekText:Ljava/lang/String;
    iget-object v3, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    #getter for: Lmiui/app/DateTimePickerDialog;->mDescription:Landroid/widget/TextView;
    invoke-static {v3}, Lmiui/app/DateTimePickerDialog;->access$100(Lmiui/app/DateTimePickerDialog;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .end local v0           #dayText:Ljava/lang/String;
    .end local v2           #weekText:Ljava/lang/String;
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v3, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    invoke-virtual {v3}, Lmiui/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    #getter for: Lmiui/app/DateTimePickerDialog;->mTimeInMillis:J
    invoke-static {v4}, Lmiui/app/DateTimePickerDialog;->access$000(Lmiui/app/DateTimePickerDialog;)J

    move-result-wide v4

    const/16 v6, 0x97

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, timeText:Ljava/lang/String;
    iget-object v3, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    #getter for: Lmiui/app/DateTimePickerDialog;->mDescription:Landroid/widget/TextView;
    invoke-static {v3}, Lmiui/app/DateTimePickerDialog;->access$100(Lmiui/app/DateTimePickerDialog;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
