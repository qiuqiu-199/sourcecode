.class synthetic Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$5;
.super Ljava/lang/Object;
.source "CustomColumnAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$sufficientlysecure$keychain$model$AutocryptPeer$GossipOrigin:[I

.field static final synthetic $SwitchMap$org$sufficientlysecure$keychain$pgp$CanonicalizedKeyRing$VerificationStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 85
    invoke-static {}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->values()[Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$5;->$SwitchMap$org$sufficientlysecure$keychain$pgp$CanonicalizedKeyRing$VerificationStatus:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$5;->$SwitchMap$org$sufficientlysecure$keychain$pgp$CanonicalizedKeyRing$VerificationStatus:[I

    sget-object v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->UNVERIFIED:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$5;->$SwitchMap$org$sufficientlysecure$keychain$pgp$CanonicalizedKeyRing$VerificationStatus:[I

    sget-object v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->VERIFIED_SECRET:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$5;->$SwitchMap$org$sufficientlysecure$keychain$pgp$CanonicalizedKeyRing$VerificationStatus:[I

    sget-object v4, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->VERIFIED_SELF:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 46
    :catch_2
    invoke-static {}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->values()[Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$5;->$SwitchMap$org$sufficientlysecure$keychain$model$AutocryptPeer$GossipOrigin:[I

    :try_start_3
    sget-object v3, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$5;->$SwitchMap$org$sufficientlysecure$keychain$model$AutocryptPeer$GossipOrigin:[I

    sget-object v4, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->GOSSIP_HEADER:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$5;->$SwitchMap$org$sufficientlysecure$keychain$model$AutocryptPeer$GossipOrigin:[I

    sget-object v3, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->SIGNATURE:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$5;->$SwitchMap$org$sufficientlysecure$keychain$model$AutocryptPeer$GossipOrigin:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->DEDUP:Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$5;---><clinit>()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
