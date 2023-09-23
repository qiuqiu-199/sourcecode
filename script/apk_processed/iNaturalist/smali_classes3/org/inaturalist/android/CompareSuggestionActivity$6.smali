.class Lorg/inaturalist/android/CompareSuggestionActivity$6;
.super Ljava/lang/Object;
.source "CompareSuggestionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/CompareSuggestionActivity;->refreshCurrentTaxon()V
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

    .line 292
    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$6;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 295
    iget-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$6;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    iget p1, p1, Lorg/inaturalist/android/CompareSuggestionActivity;->mSuggestionIndex:I

    if-nez p1, :cond_0

    return-void

    .line 297
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$6;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    iget v0, p1, Lorg/inaturalist/android/CompareSuggestionActivity;->mSuggestionIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lorg/inaturalist/android/CompareSuggestionActivity;->mSuggestionIndex:I

    .line 298
    iget-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$6;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    const/4 v0, 0x0

    iput v0, p1, Lorg/inaturalist/android/CompareSuggestionActivity;->mSuggestionPhotoPosition:I

    .line 299
    iget-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$6;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-static {p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->access$500(Lorg/inaturalist/android/CompareSuggestionActivity;)V

    return-void
.end method
