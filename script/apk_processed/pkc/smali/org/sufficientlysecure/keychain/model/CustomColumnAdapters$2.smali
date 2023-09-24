.class final Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$2;
.super Ljava/lang/Object;
.source "CustomColumnAdapters.java"

# interfaces
.implements Lcom/squareup/sqldelight/ColumnAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/ColumnAdapter<",
        "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$2;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$2;->decode(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 36
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0xa

    if-eq v2, v0, :cond_1

    const/16 v0, 0x14

    if-eq v2, v0, :cond_0

    .line 40
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unhandled database value!"

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_0
    sget-object v2, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->DEDUP:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    return-object v2

    .line 38
    :cond_1
    sget-object v2, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->SIGNATURE:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    return-object v2

    .line 37
    :cond_2
    sget-object v2, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->GOSSIP_HEADER:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$2;--->decode(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public encode(Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;)Ljava/lang/Long;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 46
    sget-object v0, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$5;->$SwitchMap$org$sufficientlysecure$keychain$model$AutocryptPeer$GossipOrigin:[I

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->ordinal()I

    move-result v3

    aget v3, v0, v3

    packed-switch v3, :pswitch_data_0

    .line 50
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unhandled database value!"

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    const-wide/16 v0, 0x14

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    :pswitch_1
    const-wide/16 v0, 0xa

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    :pswitch_2
    const-wide/16 v0, 0x0

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$2;--->encode(Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;)Ljava/lang/Long;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$2;->encode(Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
