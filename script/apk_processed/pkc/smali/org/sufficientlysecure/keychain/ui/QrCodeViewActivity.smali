.class public Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "QrCodeViewActivity.java"


# static fields
.field public static final EXTRA_MASTER_KEY_ID:Ljava/lang/String; = "master_key_id"


# instance fields
.field private qrCode:Landroid/graphics/Bitmap;

.field private qrCodeImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 40
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    if-nez v3, :cond_0

    const v3, 0x7f11017e

    .line 75
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v2, v3, v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v3

    invoke-interface {v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    .line 76
    invoke-static {v2}, Landroid/support/v4/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    return-void

    .line 80
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "openpgp4fpr"

    .line 81
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->fingerprint()[B

    move-result-object v3

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 83
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x0

    .line 84
    invoke-static {v3, v0}, Lorg/sufficientlysecure/keychain/ui/util/QrCodeUtils;->getQRCodeBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;->qrCode:Landroid/graphics/Bitmap;

    .line 86
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;->qrCodeImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestLayout()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;--->onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$QrCodeViewActivity(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;->onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    return-void
.end method

.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c00d9

    .line 91
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$onCreate$0$QrCodeViewActivity(Landroid/view/View;)V
    .locals 0

    .line 50
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    return-void
.end method

.method final synthetic lambda$onCreate$1$QrCodeViewActivity(Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    return-void
.end method

.method final synthetic lambda$onCreate$2$QrCodeViewActivity()V
    .locals 4

    .line 66
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;->qrCode:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;->qrCode:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;->qrCodeImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;->qrCodeImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;->qrCodeImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 48
    invoke-super {v4, v5}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity$$Lambda$0;

    invoke-direct {v5, v4}, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;)V

    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;->setFullScreenDialogClose(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f090278

    .line 52
    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;->qrCodeImageView:Landroid/widget/ImageView;

    const v5, 0x7f090279

    .line 53
    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/CardView;

    .line 55
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity$$Lambda$1;

    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;)V

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v0, "master_key_id"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 58
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing required extra master_key_id"

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 61
    :cond_0
    invoke-static {v4}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v5

    const-class v0, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    invoke-virtual {v5, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    .line 62
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "master_key_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->setMasterKeyId(J)V

    .line 63
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->getUnifiedKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v5

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity$$Lambda$2;

    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;)V

    invoke-virtual {v5, v4, v0}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 65
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;->qrCodeImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity$$Lambda$3;

    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;)V

    invoke-virtual {v5, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
