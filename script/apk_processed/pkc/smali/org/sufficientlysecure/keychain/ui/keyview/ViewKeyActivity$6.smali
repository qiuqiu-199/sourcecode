.class Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$6;
.super Landroid/os/AsyncTask;
.source "ViewKeyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 704
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$6;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$6;---><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Landroid/graphics/Bitmap;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 706
    new-instance v0, Lorg/sufficientlysecure/keychain/util/ContactHelper;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$6;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/util/ContactHelper;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    aget-object v4, v4, v1

    .line 707
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->loadPhotoByMasterKeyId(JZ)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$6;--->doInBackground([Ljava/lang/Long;)Landroid/graphics/Bitmap;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 704
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$6;->doInBackground([Ljava/lang/Long;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    if-nez v3, :cond_0

    return-void

    .line 715
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$6;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->access$900(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 716
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$6;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->access$900(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$6;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    const v1, 0x7f0601b7

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 718
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$6;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->access$1000(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$6;--->onPostExecute(Landroid/graphics/Bitmap;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 704
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$6;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
