.class Lorg/inaturalist/android/UserActivitiesAdapter$2;
.super Ljava/lang/Object;
.source "UserActivitiesAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/UserActivitiesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

.field final synthetic val$activityDescription:Landroid/widget/TextView;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$dateFormatted:Ljava/lang/String;

.field final synthetic val$finalUserName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/UserActivitiesAdapter;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$2;->this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/UserActivitiesAdapter$2;->val$activityDescription:Landroid/widget/TextView;

    iput-object p3, p0, Lorg/inaturalist/android/UserActivitiesAdapter$2;->val$finalUserName:Ljava/lang/String;

    iput-object p4, p0, Lorg/inaturalist/android/UserActivitiesAdapter$2;->val$dateFormatted:Ljava/lang/String;

    iput-object p5, p0, Lorg/inaturalist/android/UserActivitiesAdapter$2;->val$body:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    .line 158
    iget-object v0, p0, Lorg/inaturalist/android/UserActivitiesAdapter$2;->val$activityDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 159
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 160
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 165
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/UserActivitiesAdapter$2;->val$activityDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 167
    iget-object v0, p0, Lorg/inaturalist/android/UserActivitiesAdapter$2;->val$activityDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 168
    iget-object v3, p0, Lorg/inaturalist/android/UserActivitiesAdapter$2;->this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-static {v3}, Lorg/inaturalist/android/UserActivitiesAdapter;->access$000(Lorg/inaturalist/android/UserActivitiesAdapter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10038c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/inaturalist/android/UserActivitiesAdapter$2;->val$finalUserName:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, ""

    const/4 v8, 0x1

    aput-object v6, v5, v8

    iget-object v6, p0, Lorg/inaturalist/android/UserActivitiesAdapter$2;->val$dateFormatted:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    .line 170
    iget-object v3, p0, Lorg/inaturalist/android/UserActivitiesAdapter$2;->this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-static {v3}, Lorg/inaturalist/android/UserActivitiesAdapter;->access$000(Lorg/inaturalist/android/UserActivitiesAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/inaturalist/android/UserActivitiesAdapter$2;->val$finalUserName:Ljava/lang/String;

    aput-object v4, v1, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/inaturalist/android/UserActivitiesAdapter$2;->val$body:Ljava/lang/String;

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v8

    iget-object v0, p0, Lorg/inaturalist/android/UserActivitiesAdapter$2;->val$dateFormatted:Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$2;->val$activityDescription:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
