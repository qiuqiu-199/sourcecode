.class Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;
.super Landroid/os/AsyncTask;
.source "DecryptListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->processResult(Landroid/net/Uri;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;Landroid/net/Uri;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 404
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;->val$uri:Landroid/net/Uri;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;---><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;Landroid/net/Uri;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 404
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    .line 408
    iget-object v10, v9, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-static {v10}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v0, v9, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;->val$uri:Landroid/net/Uri;

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    .line 410
    iget-object v0, v9, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 415
    :goto_0
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->getOutputUris()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 417
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->getOutputUris()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 418
    iget-object v5, v9, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_2

    .line 422
    :cond_1
    iget-object v5, v10, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mMetadata:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openintents/openpgp/OpenPgpMetadata;

    .line 423
    invoke-virtual {v5}, Lorg/openintents/openpgp/OpenPgpMetadata;->getMimeType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/plain"

    .line 427
    invoke-static {v5, v6}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 429
    iget-object v6, v9, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080097

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    :cond_2
    const-string v6, "application/octet-stream"

    .line 430
    invoke-static {v5, v6}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 433
    iget-object v6, v9, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800ac

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    :cond_3
    const-string v6, "application/pgp-keys"

    .line 434
    invoke-static {v5, v6}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 436
    iget-object v6, v9, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800bc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    :cond_4
    const-string v6, "image/*"

    .line 437
    invoke-static {v5, v6}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    .line 438
    invoke-static {v0, v6}, Lorg/sufficientlysecure/keychain/ui/util/FormattingUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v6

    .line 439
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v0, v4, v7}, Lorg/sufficientlysecure/keychain/util/FileHelper;->getThumbnail(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 440
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v6, v7

    goto :goto_1

    :cond_5
    move-object v6, v1

    :goto_1
    if-nez v6, :cond_6

    .line 444
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v7, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v7, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 450
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 451
    iget-object v6, v9, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_6
    if-eqz v6, :cond_7

    .line 457
    iget-object v5, v9, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v1

    const-string v11, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;--->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 404
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 468
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;->val$uri:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    .line 469
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;)Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    move-result-object v0

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->addResult(Landroid/net/Uri;Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;--->onPostExecute(Ljava/lang/Void;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
