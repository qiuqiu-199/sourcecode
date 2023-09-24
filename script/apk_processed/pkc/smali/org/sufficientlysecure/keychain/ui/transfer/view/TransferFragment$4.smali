.class Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$4;
.super Ljava/lang/Object;
.source "TransferFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->setQrImage(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;

.field final synthetic val$qrCode:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;Landroid/graphics/Bitmap;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 270
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$4;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$4;->val$qrCode:Landroid/graphics/Bitmap;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$4;---><init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;Landroid/graphics/Bitmap;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    move-object/16 v3, p0

    .line 273
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$4;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$4;->val$qrCode:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 279
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$4;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$4;--->onGlobalLayout()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
