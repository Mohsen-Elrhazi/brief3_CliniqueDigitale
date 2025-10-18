<%--
  Created by IntelliJ IDEA.
  User: Youcode
  Date: 13/10/2025
  Time: 13:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section class="container px-4 mx-auto">
    <div class="sm:flex sm:items-center sm:justify-between">
        <h2 class="text-lg font-medium text-gray-800 dark:text-white">Files uploaded</h2>

        <div class="flex items-center mt-4 gap-x-3">


            <div x-data="{ modelOpen: false }">
                <!-- Bouton d'ouverture -->
                <button
                        @click="modelOpen = !modelOpen"
                        class="flex items-center justify-center px-3 py-2 text-sm tracking-wide text-white capitalize transition-colors duration-200 transform bg-indigo-500 rounded-md hover:bg-indigo-600 focus:outline-none focus:bg-indigo-500 focus:ring focus:ring-indigo-300 focus:ring-opacity-50">
                    <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5 mx-1.5" viewBox="0 0 20 20" fill="currentColor">
                        <path fill-rule="evenodd" d="M10 3a1 1 0 011 1v5h5a1 1 0 110 2h-5v5a1 1 0 11-2 0v-5H4a1 1 0 110-2h5V4a1 1 0 011-1z" clip-rule="evenodd"></path>
                    </svg>
                    <span class="mx-1.5">Ajouter un Docteur</span>
                </button>

                <!-- Modal -->
                <div
                        x-show="modelOpen"
                        class="fixed inset-0 z-50 overflow-y-auto"
                        aria-labelledby="modal-title"
                        role="dialog"
                        aria-modal="true"
                >
                    <div class="flex items-end justify-center min-h-screen px-4 text-center md:items-center sm:block sm:p-0">

                        <!-- Fond flou -->
                        <div
                                @click="modelOpen = false"
                                x-show="modelOpen"
                                x-transition:enter="transition ease-out duration-300 transform"
                                x-transition:enter-start="opacity-0"
                                x-transition:enter-end="opacity-100"
                                x-transition:leave="transition ease-in duration-200 transform"
                                x-transition:leave-start="opacity-100"
                                x-transition:leave-end="opacity-0"
                                class="fixed inset-0 transition-opacity bg-gray-500 bg-opacity-40 backdrop-blur-sm"
                                aria-hidden="true">
                        </div>

                        <!-- Contenu -->
                        <div
                                x-show="modelOpen"
                                x-transition:enter="transition ease-out duration-300 transform"
                                x-transition:enter-start="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
                                x-transition:enter-end="opacity-100 translate-y-0 sm:scale-100"
                                x-transition:leave="transition ease-in duration-200 transform"
                                x-transition:leave-start="opacity-100 translate-y-0 sm:scale-100"
                                x-transition:leave-end="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
                                class="inline-block w-full max-w-xl p-8 my-20 overflow-hidden text-left transition-all transform bg-white rounded-lg shadow-xl rtl:text-right 2xl:max-w-2xl"
                        >
                            <!-- En-tête -->
                            <div class="flex items-center justify-between mb-4">
                                <h1 class="text-xl font-medium text-gray-800">Ajouter un Docteur</h1>
                                <button
                                        @click="modelOpen = false"
                                        class="text-gray-600 focus:outline-none hover:text-gray-800"
                                >
                                    <svg xmlns="http://www.w3.org/2000/svg" class="w-7 h-7" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                    </svg>
                                </button>
                            </div>

                            <p class="text-sm text-gray-500 mb-6">
                                Remplissez les informations ci-dessous pour ajouter un nouveau docteur au système.
                            </p>

                            <!-- Formulaire -->
                            <form class="space-y-4" method="post" action="/admin/docteurs">
                                <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                                    <div>
                                        <label class="block text-sm font-medium text-gray-700">Nom</label>
                                        <input name="nom" type="text" placeholder="Dupont"
                                               class="w-full mt-1 px-3 py-2 border rounded-md text-gray-700 placeholder-gray-400 focus:border-indigo-400 focus:ring focus:ring-indigo-300 focus:ring-opacity-40 outline-none">
                                    </div>
                                    <div>
                                        <label class="block text-sm font-medium text-gray-700">Prénom</label>
                                        <input name="prenom" type="text" placeholder="Jean"
                                               class="w-full mt-1 px-3 py-2 border rounded-md text-gray-700 placeholder-gray-400 focus:border-indigo-400 focus:ring focus:ring-indigo-300 focus:ring-opacity-40 outline-none">
                                    </div>
                                </div>

                                <div>
                                    <label class="block text-sm font-medium text-gray-700">Email</label>
                                    <input name="email" type="email" placeholder="jean.dupont@example.com"
                                           class="w-full mt-1 px-3 py-2 border rounded-md text-gray-700 placeholder-gray-400 focus:border-indigo-400 focus:ring focus:ring-indigo-300 focus:ring-opacity-40 outline-none">
                                </div>

                                <div>
                                    <label class="block text-sm font-medium text-gray-700">Mot de passe</label>
                                    <input name="motDePasse" type="password" placeholder="********"
                                           class="w-full mt-1 px-3 py-2 border rounded-md text-gray-700 placeholder-gray-400 focus:border-indigo-400 focus:ring focus:ring-indigo-300 focus:ring-opacity-40 outline-none">
                                </div>

                                <div>
                                    <label class="block text-sm font-medium text-gray-700">Spécialité</label>
                                    <input name="specialite" type="text" placeholder="Cardiologue"
                                           class="w-full mt-1 px-3 py-2 border rounded-md text-gray-700 placeholder-gray-400 focus:border-indigo-400 focus:ring focus:ring-indigo-300 focus:ring-opacity-40 outline-none">
                                </div>

                                <!-- Boutons -->
                                <div class="flex justify-end mt-6 space-x-2">
                                    <button
                                            type="button"
                                            @click="modelOpen = false"
                                            class="px-4 py-2 text-sm font-medium text-gray-700 bg-gray-100 border rounded-md hover:bg-gray-200 focus:outline-none">
                                        Annuler
                                    </button>
                                    <button
                                            type="submit"
                                            class="px-4 py-2 text-sm font-medium text-white bg-indigo-600 rounded-md hover:bg-indigo-500 focus:outline-none focus:ring focus:ring-indigo-300 focus:ring-opacity-40">
                                        Enregistrer
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="flex flex-col mt-6">
        <div class="-mx-4 -my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
            <div class="inline-block min-w-full py-2 align-middle md:px-6 lg:px-8">
                <div class="overflow-hidden border border-gray-200 dark:border-gray-700 md:rounded-lg">
                    <table class="min-w-full divide-y divide-gray-200 dark:divide-gray-700">
                        <thead class="bg-gray-50 dark:bg-gray-800">
                        <tr>
                            <th scope="col" class="px-12 py-3.5 text-sm font-normal text-left rtl:text-right text-gray-500 dark:text-gray-400">
                                Nom
                            </th>

                            <th scope="col" class="px-12 py-3.5 text-sm font-normal text-left rtl:text-right text-gray-500 dark:text-gray-400">
                                Prenom
                            </th>

                            <th scope="col" class="px-4 py-3.5 text-sm font-normal text-left rtl:text-right text-gray-500 dark:text-gray-400">
                                Email
                            </th>

                            <th scope="col" class="px-4 py-3.5 text-sm font-normal text-left rtl:text-right text-gray-500 dark:text-gray-400">
                                MotDe Passe
                            </th>

                            <th scope="col" class="px-4 py-3.5 text-sm font-normal text-left rtl:text-right text-gray-500 dark:text-gray-400">
                                Specialite
                            </th>

<%--                            <th scope="col" class="relative py-3.5 px-4 text-gray">--%>
<%--                                <span class="sr-only">Edit</span>--%>
<%--                            </th>--%>
                        </tr>
                        </thead>
                        <tbody class="bg-white divide-y divide-gray-200 dark:divide-gray-700 dark:bg-gray-900">
                        <tr>
                            <td class="px-12 py-4 text-sm font-normal text-gray-700 whitespace-nowrap">
                                200 KB
                            </td>
                            <td class="px-12 py-4 text-sm font-normal text-gray-700 whitespace-nowrap">
                                200 KB
                            </td>
                            <td class="px-4 py-4 text-sm text-gray-500 dark:text-gray-300 whitespace-nowrap">Jan 4, 2022</td>
                            <td class="px-4 py-4 text-sm text-gray-500 dark:text-gray-300 whitespace-nowrap">Jan 4, 2022</td>
                            <td class="px-4 py-4 text-sm text-gray-500 dark:text-gray-300 whitespace-nowrap">Lana Steiner</td>
                            <td class="px-4 py-4 text-sm whitespace-nowrap">
                                <button class="px-1 py-1 text-gray-500 transition-colors duration-200 rounded-lg dark:text-gray-300 hover:bg-gray-100">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 6.75a.75.75 0 110-1.5.75.75 0 010 1.5zM12 12.75a.75.75 0 110-1.5.75.75 0 010 1.5zM12 18.75a.75.75 0 110-1.5.75.75 0 010 1.5z" />
                                    </svg>
                                </button>
                            </td>
                        </tr>




                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


</section>