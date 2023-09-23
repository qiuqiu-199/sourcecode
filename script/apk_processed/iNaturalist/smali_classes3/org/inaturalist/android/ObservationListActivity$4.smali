.class Lorg/inaturalist/android/ObservationListActivity$4;
.super Ljava/lang/Object;
.source "ObservationListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationListActivity;->onNotification(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationListActivity;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationListActivity;Ljava/lang/String;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$4;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationListActivity$4;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 842
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$4;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationListActivity;->access$1900(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 843
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$4;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationListActivity;->access$1900(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity$4;->val$content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$4;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationListActivity;->access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$4;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationListActivity;->access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getIsSyncing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$4;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationListActivity;->access$200(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 848
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$4;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationListActivity;->access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getIsSyncing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 850
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$4;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationListActivity;->access$2000(Lorg/inaturalist/android/ObservationListActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 851
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$4;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationListActivity;->access$200(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->refreshCursor()V

    .line 852
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$4;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationListActivity;->access$300(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->refreshCursor()V

    :cond_2
    return-void
.end method
