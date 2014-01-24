.class Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;
.super Ljava/lang/Object;
.source "MiuiUsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PbrFile"
.end annotation


# instance fields
.field mEfRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mFileIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 1029
    .local p2, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    .line 1031
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    .line 1034
    const/4 v3, 0x0

    .line 1035
    .local v3, sliceCount:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1036
    .local v2, record:[B
    new-instance v1, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v4, 0x0

    array-length v5, v2

    invoke-direct {v1, v2, v4, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1037
    .local v1, recTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    .line 1038
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1040
    .end local v1           #recTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    .end local v2           #record:[B
    :cond_0
    return-void
.end method


# virtual methods
.method parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;II)V
    .locals 8
    .parameter "tlvEf"
    .parameter
    .parameter "parentTag"
    .parameter "recIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SimTlv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1062
    .local p2, val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 1064
    .local v4, tagNumberWithinParentTag:I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v3

    .line 1066
    .local v3, tag:I
    packed-switch v3, :pswitch_data_0

    .line 1092
    :goto_0
    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    .line 1093
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1094
    return-void

    .line 1072
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 1073
    .local v0, data:[B
    const/4 v5, 0x0

    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    aget-byte v6, v0, v6

    or-int v1, v5, v6

    .line 1074
    .local v1, efid:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    new-instance v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;

    invoke-direct {v2, v5}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;-><init>(Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager;)V

    .line 1076
    .local v2, object:Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;
    iput v3, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    .line 1077
    iput p4, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    .line 1078
    iput v1, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mEfTag:I

    .line 1079
    iput p3, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    .line 1080
    const/16 v5, 0xa9

    if-ne p3, v5, :cond_1

    .line 1081
    iput v4, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mType2Record:I

    .line 1083
    :cond_1
    array-length v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 1084
    const/4 v5, 0x2

    aget-byte v5, v0, v5

    iput-byte v5, v2, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$EfRecord;->mSfi:B

    .line 1086
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1087
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1066
    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .locals 6
    .parameter "tlv"
    .parameter "recIndex"

    .prologue
    .line 1043
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1045
    .local v3, val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    .line 1046
    .local v1, tag:I
    packed-switch v1, :pswitch_data_0

    .line 1057
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1058
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    return-void

    .line 1050
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 1051
    .local v0, data:[B
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-direct {v2, v0, v4, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1052
    .local v2, tlvEf:Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v3, v1, p2}, Lcom/android/internal/telephony/gsm/MiuiUsimPhoneBookManager$PbrFile;->parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;II)V

    goto :goto_0

    .line 1046
    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
