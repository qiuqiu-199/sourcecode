.class public Lorg/sufficientlysecure/keychain/ui/CertifyKeyActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "CertifyKeyActivity.java"


# static fields
.field public static final EXTRA_CERTIFY_KEY_ID:Ljava/lang/String; = "certify_key_id"

.field public static final EXTRA_KEY_IDS:Ljava/lang/String; = "extra_key_ids"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "operation_result"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 27
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/CertifyKeyActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c003a

    .line 36
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/CertifyKeyActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/CertifyKeyActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
