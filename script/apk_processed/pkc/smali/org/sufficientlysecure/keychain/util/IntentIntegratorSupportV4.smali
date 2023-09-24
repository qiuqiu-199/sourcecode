.class public final Lorg/sufficientlysecure/keychain/util/IntentIntegratorSupportV4;
.super Lcom/google/zxing/integration/android/IntentIntegrator;
.source "IntentIntegratorSupportV4.java"


# instance fields
.field private final mFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 39
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 40
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/util/IntentIntegratorSupportV4;->mFragment:Landroid/support/v4/app/Fragment;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/IntentIntegratorSupportV4;---><init>(Landroid/support/v4/app/Fragment;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected startActivityForResult(Landroid/content/Intent;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 45
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/IntentIntegratorSupportV4;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/IntentIntegratorSupportV4;--->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
