.class public Lmiui/app/RemoveDuplicateContacts$MergeContacts;
.super Ljava/lang/Object;
.source "RemoveDuplicateContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/RemoveDuplicateContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MergeContacts"
.end annotation


# instance fields
.field private mChecked:Z

.field private mContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/RemoveDuplicateContacts$ContactsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/RemoveDuplicateContacts$ContactsInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 722
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/app/RemoveDuplicateContacts$ContactsInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput-object p1, p0, Lmiui/app/RemoveDuplicateContacts$MergeContacts;->mContacts:Ljava/util/ArrayList;

    .line 724
    iput-object p2, p0, Lmiui/app/RemoveDuplicateContacts$MergeContacts;->mName:Ljava/lang/String;

    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/RemoveDuplicateContacts$MergeContacts;->mChecked:Z

    .line 726
    return-void
.end method


# virtual methods
.method public getContacts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/RemoveDuplicateContacts$ContactsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    iget-object v0, p0, Lmiui/app/RemoveDuplicateContacts$MergeContacts;->mContacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lmiui/app/RemoveDuplicateContacts$MergeContacts;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 729
    iget-boolean v0, p0, Lmiui/app/RemoveDuplicateContacts$MergeContacts;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 733
    iput-boolean p1, p0, Lmiui/app/RemoveDuplicateContacts$MergeContacts;->mChecked:Z

    .line 734
    return-void
.end method
