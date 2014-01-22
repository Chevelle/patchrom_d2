.class public Landroid/app/Profile$ProfileTrigger;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileTrigger"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/Profile$ProfileTrigger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mState:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Landroid/app/Profile$ProfileTrigger$1;

    invoke-direct {v0}, Landroid/app/Profile$ProfileTrigger$1;-><init>()V

    sput-object v0, Landroid/app/Profile$ProfileTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "id"
    .parameter "state"
    .parameter "name"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Landroid/app/Profile$ProfileTrigger;->mType:I

    .line 109
    iput-object p2, p0, Landroid/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    .line 110
    iput p3, p0, Landroid/app/Profile$ProfileTrigger;->mState:I

    .line 111
    iput-object p4, p0, Landroid/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    .line 112
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Profile$ProfileTrigger;->mType:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Profile$ProfileTrigger;->mState:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/Profile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/app/Profile$ProfileTrigger;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Profile$ProfileTrigger;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Landroid/app/Profile$ProfileTrigger;->mState:I

    return v0
.end method

.method static synthetic access$202(Landroid/app/Profile$ProfileTrigger;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Landroid/app/Profile$ProfileTrigger;->mState:I

    return p1
.end method

.method static synthetic access$300(Landroid/app/Profile$ProfileTrigger;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/Profile$ProfileTrigger;
    .locals 7
    .parameter "xpp"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 169
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, name:Ljava/lang/String;
    const-string/jumbo v6, "wifiAP"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 173
    const/4 v4, 0x0

    .line 180
    .local v4, type:I
    :goto_0
    invoke-static {v4}, Landroid/app/Profile$ProfileTrigger;->getIdType(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, id:Ljava/lang/String;
    const-string/jumbo v6, "state"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 182
    .local v2, state:I
    const-string/jumbo v6, "name"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, triggerName:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 184
    move-object v3, v0

    .line 187
    :cond_0
    new-instance v5, Landroid/app/Profile$ProfileTrigger;

    invoke-direct {v5, v4, v0, v2, v3}, Landroid/app/Profile$ProfileTrigger;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .end local v0           #id:Ljava/lang/String;
    .end local v2           #state:I
    .end local v3           #triggerName:Ljava/lang/String;
    .end local v4           #type:I
    :cond_1
    return-object v5

    .line 174
    :cond_2
    const-string v6, "btDevice"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 175
    const/4 v4, 0x1

    .restart local v4       #type:I
    goto :goto_0
.end method

.method private static getIdType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 191
    if-nez p0, :cond_0

    const-string/jumbo v0, "ssid"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "address"

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Landroid/app/Profile$ProfileTrigger;->mState:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Landroid/app/Profile$ProfileTrigger;->mType:I

    return v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 2
    .parameter "builder"
    .parameter "context"

    .prologue
    .line 151
    iget v1, p0, Landroid/app/Profile$ProfileTrigger;->mType:I

    if-nez v1, :cond_0

    const-string/jumbo v0, "wifiAP"

    .line 153
    .local v0, itemType:Ljava/lang/String;
    :goto_0
    const-string v1, "<"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget v1, p0, Landroid/app/Profile$ProfileTrigger;->mType:I

    invoke-static {v1}, Landroid/app/Profile$ProfileTrigger;->getIdType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, "=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v1, p0, Landroid/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, "\" state=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget v1, p0, Landroid/app/Profile$ProfileTrigger;->mState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, "\" name=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v1, p0, Landroid/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, "\"></"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, ">\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    return-void

    .line 151
    .end local v0           #itemType:Ljava/lang/String;
    :cond_0
    const-string v0, "btDevice"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 123
    iget v0, p0, Landroid/app/Profile$ProfileTrigger;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v0, p0, Landroid/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget v0, p0, Landroid/app/Profile$ProfileTrigger;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Landroid/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return-void
.end method
