.class final synthetic Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$OnKeyChangedListener;


# instance fields
.field private final arg$1:Landroid/widget/ViewAnimator;


# direct methods
.method constructor <init>(Landroid/widget/ViewAnimator;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$$Lambda$0;->arg$1:Landroid/widget/ViewAnimator;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$$Lambda$0;---><init>(Landroid/widget/ViewAnimator;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onKeyChanged(J)V
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$$Lambda$0;->arg$1:Landroid/widget/ViewAnimator;

    invoke-static {v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->lambda$onCreateView$0$EncryptModeAsymmetricFragment(Landroid/widget/ViewAnimator;J)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$$Lambda$0;--->onKeyChanged(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
