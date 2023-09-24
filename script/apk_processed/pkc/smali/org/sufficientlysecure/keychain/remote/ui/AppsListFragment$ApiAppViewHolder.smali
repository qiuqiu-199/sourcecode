.class public Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AppsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApiAppViewHolder"
.end annotation


# instance fields
.field private final icon:Landroid/widget/ImageView;

.field private final installIcon:Landroid/widget/ImageView;

.field private final text:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 152
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;

    .line 153
    invoke-direct {v0, v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v1, 0x7f090050

    .line 155
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;->text:Landroid/widget/TextView;

    const v1, 0x7f09004f

    .line 156
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f09004e

    .line 157
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;->installIcon:Landroid/widget/ImageView;

    .line 158
    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder$$Lambda$0;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;---><init>(Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;Landroid/view/View;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method bind(Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 162
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;->text:Landroid/widget/TextView;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->readableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->applicationIconRes:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->applicationIconRes:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->applicationIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :goto_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;->installIcon:Landroid/widget/ImageView;

    iget-boolean v3, v3, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->isInstalled:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;--->bind(Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$new$0$AppsListFragment$ApiAppViewHolder(Landroid/view/View;)V
    .locals 1

    .line 158
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->onItemClick(I)V

    return-void
.end method
