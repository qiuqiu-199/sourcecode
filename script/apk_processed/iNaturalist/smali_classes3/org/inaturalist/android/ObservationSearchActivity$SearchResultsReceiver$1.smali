.class Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver$1;
.super Ljava/lang/Object;
.source "ObservationSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver$1;->this$1:Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 377
    iget-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver$1;->this$1:Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver$1;->this$1:Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationSearchActivity;->access$500(Lorg/inaturalist/android/ObservationSearchActivity;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ObservationSearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 378
    iget-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver$1;->this$1:Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationSearchActivity;->access$100(Lorg/inaturalist/android/ObservationSearchActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver$1;->this$1:Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationSearchActivity;->access$900(Lorg/inaturalist/android/ObservationSearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver$1;->this$1:Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationSearchActivity;->access$500(Lorg/inaturalist/android/ObservationSearchActivity;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver$1;->this$1:Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationSearchActivity;->access$600(Lorg/inaturalist/android/ObservationSearchActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 382
    iget-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver$1;->this$1:Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationSearchActivity;->access$200(Lorg/inaturalist/android/ObservationSearchActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver$1;->this$1:Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationSearchActivity;->access$200(Lorg/inaturalist/android/ObservationSearchActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
