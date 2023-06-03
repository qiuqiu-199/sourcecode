.class Lorg/inaturalist/android/CommentsIdsAdapter$4;
.super Ljava/lang/Object;
.source "CommentsIdsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/CommentsIdsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

.field final synthetic val$isComment:Z

.field final synthetic val$item:Lorg/inaturalist/android/BetterJSONObject;

.field final synthetic val$loading:Landroid/view/View;

.field final synthetic val$moreMenu:Landroid/widget/ImageView;

.field final synthetic val$onClick:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/CommentsIdsAdapter;Landroid/view/View;ZLjava/lang/String;Lorg/inaturalist/android/BetterJSONObject;Landroid/widget/ImageView;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$4;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter$4;->val$loading:Landroid/view/View;

    iput-boolean p3, p0, Lorg/inaturalist/android/CommentsIdsAdapter$4;->val$isComment:Z

    iput-object p4, p0, Lorg/inaturalist/android/CommentsIdsAdapter$4;->val$username:Ljava/lang/String;

    iput-object p5, p0, Lorg/inaturalist/android/CommentsIdsAdapter$4;->val$item:Lorg/inaturalist/android/BetterJSONObject;

    iput-object p6, p0, Lorg/inaturalist/android/CommentsIdsAdapter$4;->val$moreMenu:Landroid/widget/ImageView;

    iput-object p7, p0, Lorg/inaturalist/android/CommentsIdsAdapter$4;->val$onClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 221
    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$4;->val$loading:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 225
    :cond_0
    iget-boolean p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$4;->val$isComment:Z

    const v0, 0x7f0e0008

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$4;->val$username:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$4;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {v1}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$300(Lorg/inaturalist/android/CommentsIdsAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0e0001

    goto :goto_0

    :cond_1
    const p1, 0x7f0e0008

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    .line 229
    iget-object v0, p0, Lorg/inaturalist/android/CommentsIdsAdapter$4;->val$item:Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "current"

    invoke-virtual {v0, v3}, Lorg/inaturalist/android/BetterJSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 230
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/CommentsIdsAdapter$4;->val$username:Ljava/lang/String;

    iget-object v3, p0, Lorg/inaturalist/android/CommentsIdsAdapter$4;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {v3}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$300(Lorg/inaturalist/android/CommentsIdsAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 237
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_4

    .line 238
    new-instance v3, Landroid/widget/PopupMenu;

    iget-object v4, p0, Lorg/inaturalist/android/CommentsIdsAdapter$4;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-virtual {v4}, Lorg/inaturalist/android/CommentsIdsAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/inaturalist/android/CommentsIdsAdapter$4;->val$moreMenu:Landroid/widget/ImageView;

    invoke-direct {v3, v4, v5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 239
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 240
    new-instance p1, Lorg/inaturalist/android/CommentsIdsAdapter$4$1;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/CommentsIdsAdapter$4$1;-><init>(Lorg/inaturalist/android/CommentsIdsAdapter$4;)V

    invoke-virtual {v3, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 248
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 249
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    goto :goto_2

    .line 251
    :cond_4
    new-instance v3, Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    iget-object v4, p0, Lorg/inaturalist/android/CommentsIdsAdapter$4;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {v4}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$000(Lorg/inaturalist/android/CommentsIdsAdapter;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, p1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->sheet(I)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    iget-object v3, p0, Lorg/inaturalist/android/CommentsIdsAdapter$4;->val$onClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v3}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->listener(Landroid/content/DialogInterface$OnClickListener;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->show()Lcom/cocosw/bottomsheet/BottomSheet;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Lcom/cocosw/bottomsheet/BottomSheet;->getMenu()Landroid/view/Menu;

    move-result-object p1

    :goto_2
    if-eqz v0, :cond_5

    .line 257
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 258
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 261
    :cond_5
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 262
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_3
    return-void
.end method
