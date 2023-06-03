.class Lorg/inaturalist/android/ObservationCursorAdapter$7;
.super Ljava/lang/Object;
.source "ObservationCursorAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationCursorAdapter;->loadMoreObservations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationCursorAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationCursorAdapter;)V
    .locals 0

    .line 1129
    iput-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$7;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1132
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$7;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$700(Lorg/inaturalist/android/ObservationCursorAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$7;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$700(Lorg/inaturalist/android/ObservationCursorAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100234

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
