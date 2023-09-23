.class Lorg/inaturalist/android/ObservationEditor$7;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationEditor;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$7;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V
    .locals 0

    .line 561
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-le p1, p2, :cond_0

    .line 562
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$7;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$500(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onPreSetBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 0

    return-object p2
.end method
