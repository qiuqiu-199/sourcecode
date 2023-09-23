.class Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$5;
.super Landroid/os/AsyncTask;
.source "ViewKeyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->loadQrCode([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

.field final synthetic val$fingerprint:[B


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;[B)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 629
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$5;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$5;->val$fingerprint:[B

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$5;---><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;[B)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 631
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$5;->val$fingerprint:[B

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintToHex([B)Ljava/lang/String;

    move-result-object v3

    .line 632
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "openpgp4fpr"

    .line 633
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 634
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 635
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x0

    .line 637
    invoke-static {v3, v0}, Lorg/sufficientlysecure/keychain/ui/util/QrCodeUtils;->getQRCodeBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$5;--->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 629
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$5;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 641
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$5;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$5;->val$fingerprint:[B

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->access$702(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;[B)[B

    .line 644
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$5;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    .line 645
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->access$800(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$5;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->access$800(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    .line 644
    invoke-static {v4, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 647
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$5;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->access$800(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 650
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v4, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0xc8

    .line 651
    invoke-virtual {v4, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 652
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$5;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->access$800(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$5;--->onPostExecute(Landroid/graphics/Bitmap;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 629
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$5;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
