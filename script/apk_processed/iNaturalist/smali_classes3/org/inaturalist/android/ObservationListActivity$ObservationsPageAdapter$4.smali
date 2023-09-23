.class Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$4;
.super Ljava/lang/Object;
.source "ObservationListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;)V
    .locals 0

    .line 1123
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$4;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1126
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$4;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$1200(Lorg/inaturalist/android/ObservationListActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1127
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$4;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    const-string v0, "iNaturalistPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/inaturalist/android/ObservationListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1128
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "onboarded_syncing"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
