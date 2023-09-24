.class Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity$1;
.super Ljava/lang/Object;
.source "ShowNfcSweetspotActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;

.field final synthetic val$translationX:F

.field final synthetic val$translationY:F


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;FF)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    .line 66
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;

    iput v2, v0, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity$1;->val$translationX:F

    iput p0, v0, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity$1;->val$translationY:F

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity$1;---><init>(Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;FF)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public run()V
    .locals 6

    move-object/16 v3, p0

    .line 69
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->access$000(Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;)Landroid/view/View;

    move-result-object v0

    iget v1, v3, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity$1;->val$translationX:F

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->access$000(Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 70
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->access$000(Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;)Landroid/view/View;

    move-result-object v0

    iget v1, v3, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity$1;->val$translationY:F

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->access$000(Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity$1;--->run()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
