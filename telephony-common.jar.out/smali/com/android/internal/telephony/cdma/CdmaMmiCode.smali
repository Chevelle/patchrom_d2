.class public final Lcom/android/internal/telephony/cdma/CdmaMmiCode;
.super Landroid/os/Handler;
.source "CdmaMmiCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# static fields
.field static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field static final EVENT_SET_COMPLETE:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "CdmaMmiCode"

.field static final MATCH_GROUP_ACTION:I = 0x2

.field static final MATCH_GROUP_DIALING_NUMBER:I = 0xc

.field static final MATCH_GROUP_POUND_STRING:I = 0x1

.field static final MATCH_GROUP_PWD_CONFIRM:I = 0xb

.field static final MATCH_GROUP_SERVICE_CODE:I = 0x3

.field static final MATCH_GROUP_SIA:I = 0x5

.field static final MATCH_GROUP_SIB:I = 0x7

.field static final MATCH_GROUP_SIC:I = 0x9

.field static final SC_PIN:Ljava/lang/String; = "04"

.field static final SC_PIN2:Ljava/lang/String; = "042"

.field static final SC_PUK:Ljava/lang/String; = "05"

.field static final SC_PUK2:Ljava/lang/String; = "052"

.field static sPatternSuppService:Ljava/util/regex/Pattern;


# instance fields
.field mAction:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDialingNumber:Ljava/lang/String;

.field mMessage:Ljava/lang/CharSequence;

.field mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field mPoundString:Ljava/lang/String;

.field mPwd:Ljava/lang/String;

.field mSc:Ljava/lang/String;

.field mSia:Ljava/lang/String;

.field mSib:Ljava/lang/String;

.field mSic:Ljava/lang/String;

.field mState:Lcom/android/internal/telephony/MmiCode$State;

.field mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 1
    .parameter "phone"
    .parameter "app"

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 147
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 148
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    .line 149
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 150
    return-void
.end method

.method private getScString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPinPukCommand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040129

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private handlePasswordError(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 267
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 269
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 271
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 272
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V

    .line 273
    return-void
.end method

.method private static makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 138
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 140
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    .locals 3
    .parameter "dialString"
    .parameter "phone"
    .parameter "app"

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 112
    .local v1, ret:Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 115
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    .end local v1           #ret:Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 117
    .restart local v1       #ret:Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPoundString:Ljava/lang/String;

    .line 118
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mAction:Ljava/lang/String;

    .line 119
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    .line 120
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSia:Ljava/lang/String;

    .line 121
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSib:Ljava/lang/String;

    .line 122
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSic:Ljava/lang/String;

    .line 123
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPwd:Ljava/lang/String;

    .line 124
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 128
    :cond_0
    return-object v1
.end method

.method private onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "msg"
    .parameter "ar"

    .prologue
    const v6, 0x104011a

    const v5, 0x1040119

    const v4, 0x1040110

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 302
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_9

    .line 305
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 306
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_8

    .line 307
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 308
    .local v1, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v3, :cond_5

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPinPukCommand()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 310
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 314
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "05"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "052"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 315
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 322
    :goto_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 323
    .local v0, attemptsRemaining:I
    if-gtz v0, :cond_3

    .line 324
    const-string v3, "CdmaMmiCode"

    const-string v4, "onSetComplete: PUK locked, cancel as lock screen will handle this"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 365
    .end local v0           #attemptsRemaining:I
    .end local v1           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    :goto_1
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 366
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V

    .line 367
    return-void

    .line 318
    .restart local v1       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 327
    .restart local v0       #attemptsRemaining:I
    :cond_3
    if-lez v0, :cond_1

    .line 328
    const-string v3, "CdmaMmiCode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSetComplete: attemptsRemaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x113

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 334
    .end local v0           #attemptsRemaining:I
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040117

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 337
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v3, :cond_6

    .line 338
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 340
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x104011f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 343
    :cond_6
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v3, :cond_7

    .line 344
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "04"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040120

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 348
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 352
    .end local v1           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 355
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 356
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 357
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040115

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 360
    :cond_a
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 361
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 280
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 281
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    .line 282
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    .line 286
    .end local v0           #ar:Landroid/os/AsyncResult;
    :goto_0
    return-void

    .line 284
    :cond_0
    const-string v1, "CdmaMmiCode"

    const-string v2, "Unexpected reply"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method isPinPukCommand()Z
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "042"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "052"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRegister()Z
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mAction:Ljava/lang/String;

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUssdRequest()Z
    .locals 2

    .prologue
    .line 205
    const-string v0, "CdmaMmiCode"

    const-string v1, "isUssdRequest is not implemented in CdmaMmiCode"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method processCode()V
    .locals 7

    .prologue
    .line 213
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPinPukCommand()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 221
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSia:Ljava/lang/String;

    .line 222
    .local v2, oldPinOrPuk:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSib:Ljava/lang/String;

    .line 223
    .local v1, newPinOrPuk:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 224
    .local v3, pinLen:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 225
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSic:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 227
    const v4, 0x104011b

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V

    .line 264
    .end local v1           #newPinOrPuk:Ljava/lang/String;
    .end local v2           #oldPinOrPuk:Ljava/lang/String;
    .end local v3           #pinLen:I
    :cond_0
    :goto_0
    return-void

    .line 228
    .restart local v1       #newPinOrPuk:Ljava/lang/String;
    .restart local v2       #oldPinOrPuk:Ljava/lang/String;
    .restart local v3       #pinLen:I
    :cond_1
    const/4 v4, 0x4

    if-lt v3, v4, :cond_2

    const/16 v4, 0x8

    if-le v3, v4, :cond_3

    .line 230
    :cond_2
    const v4, 0x104011c

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    .end local v1           #newPinOrPuk:Ljava/lang/String;
    .end local v2           #oldPinOrPuk:Ljava/lang/String;
    .end local v3           #pinLen:I
    :catch_0
    move-exception v0

    .line 260
    .local v0, exc:Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 261
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mContext:Landroid/content/Context;

    const v5, 0x1040110

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 262
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V

    goto :goto_0

    .line 231
    .end local v0           #exc:Ljava/lang/RuntimeException;
    .restart local v1       #newPinOrPuk:Ljava/lang/String;
    .restart local v2       #oldPinOrPuk:Ljava/lang/String;
    .restart local v3       #pinLen:I
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v5, "04"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v4, v5, :cond_4

    .line 235
    const v4, 0x104011e

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V

    goto :goto_0

    .line 237
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v4, :cond_0

    .line 238
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v5, "04"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 239
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v5, 0x1

    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v2, v1, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 241
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v5, "042"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 242
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v5, 0x1

    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v2, v1, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 244
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v5, "05"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 245
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v5, 0x1

    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v2, v1, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 247
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    const-string v5, "052"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v5, 0x1

    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v2, v1, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 254
    :cond_8
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported service code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 257
    .end local v1           #newPinOrPuk:Ljava/lang/String;
    .end local v2           #oldPinOrPuk:Ljava/lang/String;
    .end local v3           #pinLen:I
    :cond_9
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "No application mUiccApplicaiton is null"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
.end method
