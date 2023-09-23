.class public Lorg/sufficientlysecure/keychain/provider/KeychainExternalContract$AutocryptStatus;
.super Ljava/lang/Object;
.source "KeychainExternalContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/provider/KeychainExternalContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutocryptStatus"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final AUTOCRYPT_KEY_STATUS:Ljava/lang/String; = "autocrypt_key_status"

.field public static final AUTOCRYPT_MASTER_KEY_ID:Ljava/lang/String; = "autocrypt_master_key_id"

.field public static final AUTOCRYPT_PEER_AVAILABLE:I = 0x28

.field public static final AUTOCRYPT_PEER_AVAILABLE_EXTERNAL:I = 0x1e

.field public static final AUTOCRYPT_PEER_DISABLED:I = 0x0

.field public static final AUTOCRYPT_PEER_DISCOURAGED_OLD:I = 0xa

.field public static final AUTOCRYPT_PEER_GOSSIP:I = 0x14

.field public static final AUTOCRYPT_PEER_MUTUAL:I = 0x32

.field public static final AUTOCRYPT_PEER_STATE:Ljava/lang/String; = "autocrypt_peer_state"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final UID_ADDRESS:Ljava/lang/String; = "uid_address"

.field public static final UID_CANDIDATES:Ljava/lang/String; = "uid_candidates"

.field public static final UID_KEY_STATUS:Ljava/lang/String; = "uid_key_status"

.field public static final UID_MASTER_KEY_ID:Ljava/lang/String; = "uid_master_key_id"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 60
    invoke-static {}, Lorg/sufficientlysecure/keychain/provider/KeychainExternalContract;->access$000()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "autocrypt_status"

    .line 61
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/provider/KeychainExternalContract$AutocryptStatus;->CONTENT_URI:Landroid/net/Uri;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/provider/KeychainExternalContract$AutocryptStatus;---><clinit>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 41
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/provider/KeychainExternalContract$AutocryptStatus;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
