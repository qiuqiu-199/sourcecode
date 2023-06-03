.class final Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;
.super Ljava/lang/Object;
.source "UrlImageViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;

.field final synthetic val$defaultDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$downloads:Ljava/util/ArrayList;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$loader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 610
    const-class v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;

    return-void
.end method

.method constructor <init>(Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$loader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;

    iput-object p2, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;

    iput-object p3, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$imageView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$defaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$downloads:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 614
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$loader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;

    iget-object v0, v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;->result:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 617
    iget-object v3, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;

    if-eqz v3, :cond_1

    .line 618
    iget-object v3, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;

    iget-object v4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$imageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    iget-object v6, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$imageView:Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-interface {v3, v4, v0, v5, v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;->onPreSetBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 620
    :cond_1
    new-instance v3, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;

    iget-object v4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    sget-object v5, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mResources:Landroid/content/res/Resources;

    invoke-direct {v3, v4, v5, v0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;-><init>(Ljava/lang/String;Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    if-nez v3, :cond_3

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No usable result, defaulting "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->clog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    iget-object v3, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 625
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$200()Lcom/koushikdutta/urlimageviewhelper/DrawableCache;

    move-result-object v0

    iget-object v4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/koushikdutta/urlimageviewhelper/DrawableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    :cond_3
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$300()Ljava/util/Hashtable;

    move-result-object v0

    iget-object v4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$imageView:Landroid/widget/ImageView;

    if-nez v0, :cond_4

    .line 630
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;

    iget-object v4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$loader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;

    iget-object v4, v4, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;->result:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1, v4, v5, v2}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;->onLoaded(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    .line 632
    :cond_4
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$downloads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 634
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$400()Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 635
    iget-object v6, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 636
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring out of date request to update view for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->clog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 640
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$400()Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_7

    .line 643
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 647
    :cond_7
    iget-object v5, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$imageView:Landroid/widget/ImageView;

    if-ne v4, v5, :cond_5

    .line 648
    iget-object v5, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;

    iget-object v6, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$loader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;

    iget-object v6, v6, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;->result:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    invoke-interface {v5, v4, v6, v7, v2}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;->onLoaded(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    goto :goto_2

    .line 651
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Populated: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->clog(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
