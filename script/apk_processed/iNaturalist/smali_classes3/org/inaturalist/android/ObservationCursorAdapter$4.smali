.class Lorg/inaturalist/android/ObservationCursorAdapter$4;
.super Ljava/lang/Object;
.source "ObservationCursorAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationCursorAdapter;->loadObsImage(ILandroid/widget/ImageView;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationCursorAdapter;ILandroid/widget/ImageView;)V
    .locals 0

    .line 944
    iput-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$4;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    iput p2, p0, Lorg/inaturalist/android/ObservationCursorAdapter$4;->val$position:I

    iput-object p3, p0, Lorg/inaturalist/android/ObservationCursorAdapter$4;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 947
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$4;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    iget v1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$4;->val$position:I

    iget-object v2, p0, Lorg/inaturalist/android/ObservationCursorAdapter$4;->val$imageView:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$1000(Lorg/inaturalist/android/ObservationCursorAdapter;ILandroid/widget/ImageView;)V

    return-void
.end method
