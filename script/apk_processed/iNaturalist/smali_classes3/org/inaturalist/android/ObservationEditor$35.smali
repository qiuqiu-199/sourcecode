.class Lorg/inaturalist/android/ObservationEditor$35;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor;->setTaxon(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;Z)V
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

    .line 3162
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$35;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V
    .locals 0

    .line 3165
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0xb

    if-le p3, p4, :cond_0

    .line 3166
    iget-object p3, p0, Lorg/inaturalist/android/ObservationEditor$35;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p3}, Lorg/inaturalist/android/ObservationEditor;->access$500(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/ImageView;

    move-result-object p3

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    if-eqz p2, :cond_1

    .line 3168
    invoke-static {p2}, Lorg/inaturalist/android/ImageUtils;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public onPreSetBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 0

    return-object p2
.end method
