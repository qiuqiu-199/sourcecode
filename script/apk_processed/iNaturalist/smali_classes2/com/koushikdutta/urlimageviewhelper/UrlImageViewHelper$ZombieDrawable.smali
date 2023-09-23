.class Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "UrlImageViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZombieDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;
    }
.end annotation


# instance fields
.field mBrains:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;

.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 766
    new-instance v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;-><init>(Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;-><init>(Ljava/lang/String;Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;)V
    .locals 0

    .line 771
    invoke-direct {p0, p2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 772
    iput-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->mUrl:Ljava/lang/String;

    .line 773
    iput-object p4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->mBrains:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;

    .line 775
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$600()Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 776
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$700()Lcom/koushikdutta/urlimageviewhelper/LruBitmapCache;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/koushikdutta/urlimageviewhelper/LruBitmapCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$200()Lcom/koushikdutta/urlimageviewhelper/DrawableCache;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/koushikdutta/urlimageviewhelper/DrawableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    iget-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->mBrains:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;

    iget p2, p1, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;->mRefCounter:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;->mRefCounter:I

    return-void
.end method


# virtual methods
.method public clone(Landroid/content/res/Resources;)Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;
    .locals 4

    .line 783
    new-instance v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;

    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->mBrains:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;-><init>(Ljava/lang/String;Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 790
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 792
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->mBrains:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;

    iget v1, v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;->mRefCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;->mRefCounter:I

    .line 793
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->mBrains:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;

    iget v0, v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;->mRefCounter:I

    if-nez v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->mBrains:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;

    iget-boolean v0, v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;->mHeadshot:Z

    if-nez v0, :cond_0

    .line 795
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$700()Lcom/koushikdutta/urlimageviewhelper/LruBitmapCache;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/urlimageviewhelper/LruBitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    :cond_0
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$600()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 797
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$200()Lcom/koushikdutta/urlimageviewhelper/DrawableCache;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/urlimageviewhelper/DrawableCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Zombie GC event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->clog(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public headshot()V
    .locals 2

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOOM! Headshot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->clog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 805
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->mBrains:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable$Brains;->mHeadshot:Z

    .line 806
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$200()Lcom/koushikdutta/urlimageviewhelper/DrawableCache;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/urlimageviewhelper/DrawableCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$600()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
