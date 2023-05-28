.class public Lorg/inaturalist/android/UserActivitiesAdapter$ClickSpan;
.super Landroid/text/style/ClickableSpan;
.source "UserActivitiesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/UserActivitiesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClickSpan"
.end annotation


# instance fields
.field private mListener:Lorg/inaturalist/android/UserActivitiesAdapter$OnClickListener;

.field final synthetic this$0:Lorg/inaturalist/android/UserActivitiesAdapter;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/UserActivitiesAdapter;Lorg/inaturalist/android/UserActivitiesAdapter$OnClickListener;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$ClickSpan;->this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 365
    iput-object p2, p0, Lorg/inaturalist/android/UserActivitiesAdapter$ClickSpan;->mListener:Lorg/inaturalist/android/UserActivitiesAdapter$OnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 375
    iget-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$ClickSpan;->mListener:Lorg/inaturalist/android/UserActivitiesAdapter$OnClickListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$ClickSpan;->mListener:Lorg/inaturalist/android/UserActivitiesAdapter$OnClickListener;

    invoke-interface {p1}, Lorg/inaturalist/android/UserActivitiesAdapter$OnClickListener;->onClick()V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const/4 v0, 0x0

    .line 370
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
