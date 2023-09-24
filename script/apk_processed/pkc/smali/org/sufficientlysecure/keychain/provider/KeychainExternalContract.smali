.class public Lorg/sufficientlysecure/keychain/provider/KeychainExternalContract;
.super Ljava/lang/Object;
.source "KeychainExternalContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/provider/KeychainExternalContract$AutocryptStatus;
    }
.end annotation


# static fields
.field public static final BASE_AUTOCRYPT_STATUS:Ljava/lang/String; = "autocrypt_status"

.field private static final BASE_CONTENT_URI_EXTERNAL:Landroid/net/Uri;

.field public static final BASE_EMAIL_STATUS:Ljava/lang/String; = "email_status"

.field public static final CONTENT_AUTHORITY_EXTERNAL:Ljava/lang/String; = "org.sufficientlysecure.keychain.provider.exported"

.field public static final KEY_STATUS_UNAVAILABLE:I = 0x0

.field public static final KEY_STATUS_UNVERIFIED:I = 0x1

.field public static final KEY_STATUS_VERIFIED:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content://org.sufficientlysecure.keychain.provider.exported"

    .line 33
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/provider/KeychainExternalContract;->BASE_CONTENT_URI_EXTERNAL:Landroid/net/Uri;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/provider/KeychainExternalContract;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 64
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/provider/KeychainExternalContract;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .line 27
    sget-object v0, Lorg/sufficientlysecure/keychain/provider/KeychainExternalContract;->BASE_CONTENT_URI_EXTERNAL:Landroid/net/Uri;

    return-object v0
.end method
