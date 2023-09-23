.class public final enum Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;
.super Ljava/lang/Enum;
.source "AutocryptPeer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/model/AutocryptPeer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GossipOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

.field public static final enum DEDUP:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

.field public static final enum GOSSIP_HEADER:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

.field public static final enum SIGNATURE:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 13
    new-instance v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    const-string v1, "GOSSIP_HEADER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->GOSSIP_HEADER:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    new-instance v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    const-string v1, "SIGNATURE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->SIGNATURE:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    new-instance v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    const-string v1, "DEDUP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->DEDUP:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    sget-object v1, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->GOSSIP_HEADER:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->SIGNATURE:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->DEDUP:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    aput-object v1, v0, v4

    sput-object v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->$VALUES:[Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;---><clinit>()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 12
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;---><init>(Ljava/lang/String;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;
    .locals 4

    move-object/16 v1, p0

    .line 12
    const-class v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;
    .locals 4

    .line 12
    sget-object v0, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->$VALUES:[Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;--->values()[Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
