.class final synthetic Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity$$Lambda$3;->arg$1:Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity$$Lambda$3;---><init>(Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    move-object/16 v1, p0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity$$Lambda$3;->arg$1:Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;->lambda$onCreate$2$QrCodeViewActivity()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity$$Lambda$3;--->onGlobalLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
