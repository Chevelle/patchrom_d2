.class public Lmiui/app/RemoveDuplicateContacts$ContactsInfo;
.super Ljava/lang/Object;
.source "RemoveDuplicateContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/RemoveDuplicateContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsInfo"
.end annotation


# instance fields
.field private mCount:I

.field private mEmails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mPhones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoId:J

.field private mRawContactId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/util/List;Ljava/util/List;J)V
    .locals 1
    .parameter "photoId"
    .parameter "name"
    .parameter
    .parameter
    .parameter "rawContactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 779
    .local p4, phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p5, emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    iput-wide p1, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mPhotoId:J

    .line 781
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, ""

    .end local p3
    :cond_0
    iput-object p3, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mName:Ljava/lang/String;

    .line 782
    iput-object p4, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mPhones:Ljava/util/List;

    .line 783
    iput-object p5, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mEmails:Ljava/util/List;

    .line 784
    iput-wide p6, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mRawContactId:J

    .line 785
    return-void
.end method

.method public constructor <init>(Lmiui/app/RemoveDuplicateContacts$RawContactData;I)V
    .locals 2
    .parameter "rawContact"
    .parameter "count"

    .prologue
    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    iget-wide v0, p1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mPhotoId:J

    iput-wide v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mPhotoId:J

    .line 771
    iget-object v0, p1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mName:Ljava/lang/String;

    .line 772
    invoke-virtual {p1}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->getDatas()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mPhones:Ljava/util/List;

    .line 773
    iput p2, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mCount:I

    .line 774
    invoke-virtual {p1}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->getRawContactId()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mRawContactId:J

    .line 775
    invoke-virtual {p1}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->getDatas()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mEmails:Ljava/util/List;

    .line 776
    return-void

    .line 771
    :cond_0
    iget-object v0, p1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 746
    iget v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mCount:I

    return v0
.end method

.method public getEmails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 766
    iget-object v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mEmails:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 754
    iget-object v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mPhones:Ljava/util/List;

    return-object v0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 758
    iget-wide v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mPhotoId:J

    return-wide v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 762
    iget-wide v0, p0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;->mRawContactId:J

    return-wide v0
.end method
