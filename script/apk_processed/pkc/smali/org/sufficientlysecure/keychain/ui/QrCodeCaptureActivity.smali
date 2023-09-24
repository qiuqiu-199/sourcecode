.class public Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "QrCodeCaptureActivity.java"


# static fields
.field public static final MY_PERMISSIONS_REQUEST_CAMERA:I = 0x2a


# instance fields
.field private barcodeScannerView:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

.field private capture:Lcom/journeyapps/barcodescanner/CaptureManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 36
    invoke-direct {v0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private init(Lcom/journeyapps/barcodescanner/CompoundBarcodeView;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    .line 67
    new-instance v0, Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/CaptureManager;-><init>(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    .line 68
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v2, v3, p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->initializeFromIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 69
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v2}, Lcom/journeyapps/barcodescanner/CaptureManager;->decode()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;--->init(Lcom/journeyapps/barcodescanner/CompoundBarcodeView;Landroid/content/Intent;Landroid/os/Bundle;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 44
    invoke-super {v2, v3}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0c00da

    .line 46
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->setContentView(I)V

    const v0, 0x7f090392

    .line 48
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    .line 49
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    const v1, 0x7f1107e1

    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->setStatusText(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    .line 52
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v2, v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->init(Lcom/journeyapps/barcodescanner/CompoundBarcodeView;Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_0
    const-string v3, "android.permission.CAMERA"

    .line 56
    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 58
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->init(Lcom/journeyapps/barcodescanner/CompoundBarcodeView;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 60
    new-array v3, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v3, v0

    const/16 v0, 0x2a

    invoke-static {v2, v3, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    move-object/16 v1, p0

    .line 107
    invoke-super {v1}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;--->onDestroy()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    .line 123
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    invoke-virtual {v0, v2, v3}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;--->onKeyDown(ILandroid/view/KeyEvent;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onPause()V
    .locals 4

    move-object/16 v1, p0

    .line 99
    invoke-super {v1}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;--->onPause()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->onPause()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    if-lez v1, :cond_1

    aget v1, p0, v2

    if-nez v1, :cond_1

    .line 80
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->init(Lcom/journeyapps/barcodescanner/CompoundBarcodeView;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->setResult(I)V

    .line 83
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->finish()V

    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;--->onRequestPermissionsResult(I[Ljava/lang/String;[I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onResume()V
    .locals 4

    move-object/16 v1, p0

    .line 91
    invoke-super {v1}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;--->onResume()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->onResume()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 115
    invoke-super {v1, v2}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;--->onSaveInstanceState(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;->capture:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0, v2}, Lcom/journeyapps/barcodescanner/CaptureManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
