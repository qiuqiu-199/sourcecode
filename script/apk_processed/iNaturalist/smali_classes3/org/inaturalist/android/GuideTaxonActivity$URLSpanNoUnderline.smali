.class Lorg/inaturalist/android/GuideTaxonActivity$URLSpanNoUnderline;
.super Landroid/text/style/URLSpan;
.source "GuideTaxonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/GuideTaxonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "URLSpanNoUnderline"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/GuideTaxonActivity;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/GuideTaxonActivity;Ljava/lang/String;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity$URLSpanNoUnderline;->this$0:Lorg/inaturalist/android/GuideTaxonActivity;

    .line 521
    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 526
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    .line 527
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
