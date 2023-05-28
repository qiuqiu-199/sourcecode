.class Lorg/inaturalist/android/UserProfile$10;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/UserProfile;->refreshUserDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/UserProfile;

.field final synthetic val$bio:Ljava/lang/String;

.field final synthetic val$onBio:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/UserProfile;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lorg/inaturalist/android/UserProfile$10;->this$0:Lorg/inaturalist/android/UserProfile;

    iput-object p2, p0, Lorg/inaturalist/android/UserProfile$10;->val$bio:Ljava/lang/String;

    iput-object p3, p0, Lorg/inaturalist/android/UserProfile$10;->val$onBio:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 771
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 772
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile$10;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {v0}, Lorg/inaturalist/android/UserProfile;->access$1100(Lorg/inaturalist/android/UserProfile;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 774
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile$10;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {v0}, Lorg/inaturalist/android/UserProfile;->access$1100(Lorg/inaturalist/android/UserProfile;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 777
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile$10;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {v0}, Lorg/inaturalist/android/UserProfile;->access$1100(Lorg/inaturalist/android/UserProfile;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 779
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 781
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/inaturalist/android/UserProfile$10;->val$bio:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v0

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x8

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "... "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/inaturalist/android/UserProfile$10;->this$0:Lorg/inaturalist/android/UserProfile;

    const v1, 0x7f10021f

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/UserProfile;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 784
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile$10;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {v1}, Lorg/inaturalist/android/UserProfile;->access$1100(Lorg/inaturalist/android/UserProfile;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile$10;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {v0}, Lorg/inaturalist/android/UserProfile;->access$1100(Lorg/inaturalist/android/UserProfile;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/UserProfile$10;->val$onBio:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
