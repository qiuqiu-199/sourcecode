.class Lorg/inaturalist/android/ObservationCursorAdapter$2;
.super Ljava/lang/Object;
.source "ObservationCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

.field final synthetic val$obsId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationCursorAdapter;Ljava/lang/Long;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$2;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationCursorAdapter$2;->val$obsId:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 561
    iget-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$2;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$600(Lorg/inaturalist/android/ObservationCursorAdapter;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 562
    iget-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$2;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$700(Lorg/inaturalist/android/ObservationCursorAdapter;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f100285

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 567
    :cond_0
    sget-object p1, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$2;->val$obsId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 568
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lorg/inaturalist/android/ObservationCursorAdapter$2;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$700(Lorg/inaturalist/android/ObservationCursorAdapter;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {v1, v2, p1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "show_comments"

    .line 569
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 570
    iget-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$2;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$700(Lorg/inaturalist/android/ObservationCursorAdapter;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
