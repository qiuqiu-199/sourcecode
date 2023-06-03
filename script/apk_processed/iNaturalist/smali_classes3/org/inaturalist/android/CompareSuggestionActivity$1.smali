.class Lorg/inaturalist/android/CompareSuggestionActivity$1;
.super Ljava/lang/Object;
.source "CompareSuggestionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/CompareSuggestionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/CompareSuggestionActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/CompareSuggestionActivity;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$1;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 160
    iget-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$1;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/CompareSuggestionActivity;->setResult(I)V

    .line 161
    iget-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$1;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->finish()V

    return-void
.end method
