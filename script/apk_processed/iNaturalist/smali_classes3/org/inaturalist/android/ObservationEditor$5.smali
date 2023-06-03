.class Lorg/inaturalist/android/ObservationEditor$5;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$5;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationEditor$5;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 513
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$5;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$400(Lorg/inaturalist/android/ObservationEditor;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 514
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$5;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "onboarded_species_guess"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
