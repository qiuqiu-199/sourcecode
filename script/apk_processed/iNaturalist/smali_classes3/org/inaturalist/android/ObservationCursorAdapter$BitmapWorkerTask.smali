.class Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "ObservationCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ObservationCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mFilename:Ljava/lang/String;

.field private final mImageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field final synthetic this$0:Lorg/inaturalist/android/ObservationCursorAdapter;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/ObservationCursorAdapter;Landroid/widget/ImageView;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 850
    iput-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;->mFilename:Ljava/lang/String;

    .line 855
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 861
    aget-object v1, p1, v0

    iput-object v1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;->mFilename:Ljava/lang/String;

    const/4 v1, 0x1

    .line 862
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;->mPosition:I

    .line 865
    iget-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$800(Lorg/inaturalist/android/ObservationCursorAdapter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;->mFilename:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 867
    iget-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$800(Lorg/inaturalist/android/ObservationCursorAdapter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;->mFilename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    goto :goto_0

    .line 870
    :cond_0
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v1, 0x64

    .line 871
    invoke-static {p1, v1, v1}, Lorg/inaturalist/android/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 874
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 876
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 877
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;->mFilename:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 880
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;->mFilename:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/inaturalist/android/ImageUtils;->rotateAccordingToOrientation(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 881
    invoke-static {p1}, Lorg/inaturalist/android/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 883
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$800(Lorg/inaturalist/android/ObservationCursorAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 848
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 893
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 894
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 897
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 898
    iget-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$900(Lorg/inaturalist/android/ObservationCursorAdapter;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;->mFilename:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 848
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
